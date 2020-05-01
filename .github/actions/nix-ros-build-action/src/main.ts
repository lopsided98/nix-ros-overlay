import * as path from 'path'
import * as fs from 'fs'
import * as core from '@actions/core'
import * as io from '@actions/io'
import * as pLimit from 'p-limit'
import * as nix from './nix'
import * as cachix from './cachix'

const enum BuildStatus {
  SUCCESS,
  CACHED,
  CACHED_FAILURE,
  EVALUATION_FAILURE,
  DEPENDENCY_FAILURE,
  BUILD_FAILURE,
  ERROR
}

interface BuildResult {
  readonly status: BuildStatus,
  readonly attr: string,
  readonly drvPath?: string,
  readonly message: string
}

class PackageSet {
  private nixFile: string
  private rootAttribute: string
  private cachixCache: string
  private drvDir: string
  private resultDir: string
  private failedBuildsCacheFile: string
  private failedBuildsCache: Set<string>
  private failedPackages = new Map<string, string>()

  public constructor(
    nixFile: string,
    rootAttribute: string,
    cachixCache: string,
    buildDir = "build",
    failedBuildsCacheFile = 'failed-builds/failed-builds.json'
  ) {
    this.nixFile = nixFile
    this.rootAttribute = rootAttribute
    this.cachixCache = cachixCache
    this.drvDir = path.join(buildDir, 'drvs')
    this.resultDir = path.join(buildDir, 'results')
    this.failedBuildsCacheFile = failedBuildsCacheFile
    try {
      this.failedBuildsCache =
        new Set(JSON.parse(fs.readFileSync('failed-builds/failed-builds.json', 'utf-8')))
    } catch (e) {
      core.warning(`Failed to load failed builds cache: ${e}`)
      this.failedBuildsCache = new Set()
    }
  }

  private async buildPackage(attr: string): Promise<BuildResult> {
    core.debug(`Instantiating ${attr}`)
    let drvPaths: Array<string>
    try {
      drvPaths = await nix.instantiate(this.nixFile, attr, this.drvDir)
    } catch (e) {
      core.debug(`${attr} failed to evaluate`)
      return {
        status: BuildStatus.EVALUATION_FAILURE,
        attr, message: e
      }
    }
    if (drvPaths.length != 1) {
      return {
        status: BuildStatus.EVALUATION_FAILURE,
        attr, message: `Attribute evaluated to ${drvPaths.length} derivations`
      }
    }
    let drvPath = await fs.promises.realpath(drvPaths[0])

    const requisites = await nix.getRequisites(drvPath)
    const failedRequisiteAttrs = requisites
      .map(d => this.failedPackages.get(d))
      .filter(a => a !== undefined)
    if (failedRequisiteAttrs.length) {
      return {
        status: BuildStatus.DEPENDENCY_FAILURE,
        attr, drvPath,
        message: `The following dependencies of '${attr}' failed to build: ` +
          failedRequisiteAttrs.join(", ")
      }
    }

    // Don't build if there is already a copy in the cache
    // This avoids downloading more than necessary from the cache
    if (await cachix.query(this.cachixCache, drvPath)) {
      core.debug(`${attr} (${drvPath}) has already been built`)
      return {
        status: BuildStatus.CACHED,
        attr, drvPath,
        message: 'Derivation is available on Cachix.'
      }
    }

    if (this.failedBuildsCache.has(drvPath)) {
      this.failedPackages.set(drvPath, attr)
      core.debug(`${attr} (${drvPath}) failed to build (cached)`)
      return {
        status: BuildStatus.CACHED_FAILURE,
        attr, drvPath,
        message: 'Cached build failure'
      }
    }

    core.debug(`Building ${attr} (${drvPath})`)
    let resultPath: string
    try {
      resultPath = await nix.realize(drvPath, attr, this.resultDir)
    } catch (e) {
      this.failedPackages.set(drvPath, attr)
      core.debug(`${attr} (${drvPath}) failed to build`)
      return {
        status: BuildStatus.BUILD_FAILURE,
        attr, drvPath,
        message: e
      }
    }

    core.debug(`Pushing ${attr} (${drvPath})`)
    await cachix.push(this.cachixCache, [resultPath])
    return {
      status: BuildStatus.SUCCESS,
      attr, drvPath,
      message: 'Derivation was built successfully.'
    }
  }

  public async build(parallelism = 20): Promise<Array<BuildResult>> {
    const buildLimit = pLimit.default(parallelism)

    await io.mkdirP(this.resultDir)
    await io.mkdirP(this.resultDir)
    const attrs = await nix.listAttrs(this.nixFile, this.rootAttribute)

    const result = await Promise.all(attrs.map(attr => buildLimit(() =>
      this.buildPackage(attr)
        .catch(e => <BuildResult>({
          status: BuildStatus.ERROR,
          attr, message: e
        })))
    ))

    try {
      await fs.promises.mkdir(path.dirname(this.failedBuildsCacheFile), { recursive: true })
      await fs.promises.writeFile(this.failedBuildsCacheFile,
        JSON.stringify(Array.from(this.failedPackages.keys())))
    } catch (e) {
      core.warning(`Failed to write failed builds cache: ${e}`)
    }

    return result
  }
}

async function run() {
  try {
    const nixFile = core.getInput('nix-file')
    const rootAttribute = core.getInput('root-attribute')
    const nixpkgs = core.getInput('nixpkgs')
    const parallelism = parseInt(core.getInput('parallelism'))
    const cachixCache = core.getInput('cachix-cache')

    core.exportVariable('NIX_PATH', `nixpkgs=${nixpkgs}`)

    const packageSet = new PackageSet(nixFile, rootAttribute, cachixCache)

    let results = await packageSet.build(parallelism)

    const statusResults = new Map<BuildStatus, Array<BuildResult>>([
      [BuildStatus.SUCCESS, []],
      [BuildStatus.CACHED, []],
      [BuildStatus.CACHED_FAILURE, []],
      [BuildStatus.EVALUATION_FAILURE, []],
      [BuildStatus.DEPENDENCY_FAILURE, []],
      [BuildStatus.BUILD_FAILURE, []],
      [BuildStatus.ERROR, []],
    ])
    results.forEach(r => statusResults.get(r.status)!.push(r))

    core.startGroup("Results")
    core.info(`Successes: ${statusResults.get(BuildStatus.SUCCESS)!.length}`)
    core.info(`Cached: ${statusResults.get(BuildStatus.CACHED)!.length}`)
    core.info(`Cached failures: ${statusResults.get(BuildStatus.CACHED_FAILURE)!.length}`)
    core.info(`Evaluation failures: ${statusResults.get(BuildStatus.EVALUATION_FAILURE)!.length}`)
    core.info(`Dependency failures: ${statusResults.get(BuildStatus.DEPENDENCY_FAILURE)!.length}`)
    core.info(`Build failures: ${statusResults.get(BuildStatus.BUILD_FAILURE)!.length}`)
    core.info(`Unknown errors: ${statusResults.get(BuildStatus.ERROR)!.length}`)
    core.endGroup()

    for (let r of statusResults.get(BuildStatus.ERROR)!) {
      core.startGroup(`Unknown error building ${r.attr} (${r.drvPath})`)
      core.error(r.message)
      core.endGroup()
    }

    for (let r of statusResults.get(BuildStatus.BUILD_FAILURE)!) {
      await core.group(
        `Failed to build ${r.attr} (${r.drvPath})`,
        () => nix.printLog(r.drvPath!).catch(() => undefined)
      )
    }

    for (let r of statusResults.get(BuildStatus.DEPENDENCY_FAILURE)!) {
      core.startGroup(`Dependency of ${r.attr} (${r.drvPath}) failed to build`)
      core.warning(r.message)
      core.endGroup()
    }

    for (let r of statusResults.get(BuildStatus.EVALUATION_FAILURE)!) {
      core.startGroup(`Failed to evaluate ${r.attr}`)
      core.warning(r.message)
      core.endGroup()
    }

    core.startGroup("Cached build failures")
    statusResults.get(BuildStatus.CACHED_FAILURE)!
      .forEach(r => core.info(`${r.attr} (${r.drvPath})`));
    core.endGroup()

    for (let r of statusResults.get(BuildStatus.SUCCESS)!) {
      await core.group(
        `Sucessfully built ${r.attr} (${r.drvPath})`,
        () => nix.printLog(r.drvPath!).catch(() => undefined)
      )
    }

    core.startGroup("Already built packages")
    statusResults.get(BuildStatus.CACHED)!
      .forEach(r => core.info(`${r.attr} (${r.drvPath})`));
    core.endGroup()
  } catch (error) {
    core.setFailed(error.message)
  }
}

run()
