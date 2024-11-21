import * as cache from '@actions/cache'
import * as core from '@actions/core'
import * as io from '@actions/io'
import assert from 'assert'
import * as fs from 'fs'
import PQueue from 'p-queue'
import * as path from 'path'
import * as cachix from './cachix.js'
import * as nix from './nix.js'


interface BuildGraphNode {
  drvPath: string
  state: 'pending' | 'failed'
  references: Set<BuildGraphNode>
  referrers: Set<BuildGraphNode>
}

class BuildGraph {
  private graph: Map<string, BuildGraphNode> = new Map()
  private ready_nodes: BuildGraphNode[] = []
  private resolve_ready: (null | ((value: BuildGraphNode | PromiseLike<BuildGraphNode>) => void)) = null

  public add(drvPath: string, references: Iterable<string>) {
    let node = this.graph.get(drvPath)
    if (node === undefined) {
      node = {
        drvPath,
        state: 'pending',
        references: new Set(),
        referrers: new Set()
      }
      this.graph.set(drvPath, node)
    }

    for (const reference of references) {
      let referenceNode = this.graph.get(reference)
      if (referenceNode === undefined) {
        referenceNode = {
          drvPath: reference,
          state: 'pending',
          references: new Set(),
          referrers: new Set()
        }
        this.graph.set(reference, referenceNode)
      }

      referenceNode.referrers.add(node)
      node.references.add(referenceNode)
    }
  }

  /// Find the initial set of packages that are ready to build and add them to
  /// the ready queue. Must be called after all packages are added.
  public init() {
    for (const node of this.graph.values()) {
      if (node.references.size == 0) {
        this.putReady(node)
      }
    }
  }

  public empty(): boolean {
    return this.graph.size === 0 && this.ready_nodes.length == 0
  }

  public drvPaths(): Iterable<string> {
    return this.graph.keys()
  }

  private putReady(node: BuildGraphNode) {
    assert(this.graph.delete(node.drvPath))
    if (this.resolve_ready !== null) {
      this.resolve_ready(node)
      this.resolve_ready = null
    } else {
      this.ready_nodes.push(node)
    }
  }

  public takeReady(): Promise<BuildGraphNode> {
    const node = this.ready_nodes.pop()
    if (node === undefined) {
      return new Promise(resolve => this.resolve_ready = resolve)
    } else {
      return Promise.resolve(node)
    }
  }

  public succeeded(node: BuildGraphNode) {
    assert(node.state === 'pending')
    for (const referrer of node.referrers) {
      assert(referrer.references.delete(node))
      if (referrer.references.size == 0) {
        this.putReady(referrer)
      }
    }
  }

  public failed(node: BuildGraphNode) {
    assert(node.state === 'pending')
    node.state = 'failed'
    for (const referrer of node.referrers) {
      this.failed(referrer)
      this.putReady(referrer)
    }
  }
}

interface Derivation {
  attr: string,
  drvPath: string,
  references: Set<string>,
}

interface EvalSuccess {
  readonly status: 'success',
  readonly derivation: Derivation,
}

interface EvalFailure {
  readonly status: 'failure',
  readonly attr: string,
  readonly stderr: string,
}

interface EvalError {
  readonly status: 'error',
  readonly attr: string,
  readonly error: unknown,
}

type EvalResult = EvalSuccess | EvalFailure | EvalError;


async function instantiate(nixFile: string, rootAttribute: string, drvDir: string, system?: string, parallelism = 4): Promise<EvalResult[]> {
  await io.mkdirP(drvDir)
  const attrs = await nix.listAttrs(nixFile, rootAttribute)

  const queue = new PQueue({ concurrency: parallelism })

  return await queue.addAll(attrs.map(attr => async () => {
    try {
      core.debug(`evaluating: ${attr}`)
      const drvPaths = await nix.instantiate(nixFile, attr, path.join(drvDir, attr), system)
      if (drvPaths.length !== 1) {
        return {
          attr,
          status: 'error' as const,
          error: new Error(`evaluation produced ${drvPaths.length} derivations`)
        }
      }
      const drvPath = await fs.promises.realpath(drvPaths[0])

      const references = new Set(await nix.getReferences(drvPath));

      return {
        status: 'success' as const,
        derivation: {
          attr,
          drvPath,
          references
        }
      }
    } catch (error: unknown) {
      core.debug(`${attr} failed to evaluate`)
      if (typeof error === 'string') {
        return {
          attr,
          status: 'failure' as const,
          stderr: error
        }
      } else {
        return {
          attr,
          status: 'error' as const,
          error
        }
      }
    }
  }
  ))
}

interface BuildSuccess {
  readonly status: 'success',
  readonly drvPath: string,
}

interface BuildCachedSuccess {
  readonly status: 'cached_success',
  readonly drvPath: string,
}

interface BuildFailure {
  readonly status: 'failure',
  readonly drvPath: string,
  readonly stderr: string,
}

interface BuildCachedFailure {
  readonly status: 'cached_failure',
  readonly drvPath: string,
}

interface BuildError {
  readonly status: 'error',
  readonly drvPath: string,
  readonly error: unknown,
}

type BuildResult = BuildSuccess | BuildCachedSuccess | BuildFailure | BuildCachedFailure | BuildError;

async function build(drvPath: string, resultDir: string, cachixCache: string): Promise<BuildResult> {
  const cacheKey = "failed-" + path.basename(drvPath, ".drv");

  try {
    if (await nix.isDrvCached(drvPath)) {
      core.debug(`found cached: ${drvPath}`)
      return {
        status: 'cached_success',
        drvPath
      }
    }
  } catch (e: unknown) {
    core.warning(`failed to query binary cache for ${drvPath}: ${e}`)
  }

  try {
    if (cache.isFeatureAvailable()) {
      // We don't actually store anything in the cache, just lookup the
      // derivation name
      if (await cache.restoreCache(["/var/empty"], cacheKey, [], { lookupOnly: true }) !== undefined) {
        core.debug(`found cached failure: ${drvPath}`)
        return {
          status: 'cached_failure',
          drvPath
        }
      }
    }
  } catch (e: unknown) {
    core.warning(`failed to query failed build cache for ${drvPath}: ${e}`)
  }

  try {
    core.debug(`building: ${drvPath}`)

    const resultPath = path.join(resultDir, path.basename(drvPath, ".drv"))
    const outputs = await nix.realize(drvPath, resultPath)

    await cachix.push(cachixCache, outputs)

    return {
      status: 'success',
      drvPath
    }
  } catch (error: unknown) {
    core.debug(`${drvPath} failed to build`)
    if (typeof error === 'string') {
      try {
        if (cache.isFeatureAvailable()) {
          await cache.saveCache(["/var/empty"], cacheKey)
        }
      } catch (e: unknown) {
        core.warning(`failed to cache failed build for ${drvPath}: ${e}`)
      }

      return {
        status: 'failure',
        drvPath,
        stderr: error
      }
    } else {
      return {
        status: 'error',
        drvPath,
        error
      }
    }
  }
}

interface SuccessResult {
  attr: string,
  drvPath: string,
}

interface CachedSuccessResult {
  attr: string,
  drvPath: string
}

interface CachedFailureResult {
  attr: string,
  drvPath: string
}

interface BuildFailureResult {
  attr: string,
  drvPath: string
  stderr: string
}

interface DependencyFailureResult {
  attr: string,
  drvPath: string,
  failedDependencies: string[]
}

interface ErrorResult {
  attr: string,
  drvPath?: string
  error: unknown
}

async function run() {
  try {
    const nixFile = core.getInput('nix-file', { required: true })
    const rootAttribute = core.getInput('root-attribute', { required: true })
    const system = core.getInput('system') || undefined
    const evalJobs = parseInt(core.getInput('eval-jobs', { required: true }))
    const buildJobs = parseInt(core.getInput('build-jobs', { required: true }))
    const cachixCache = core.getInput('cachix-cache', { required: true })

    const buildDir = "build"
    const drvDir = path.join(buildDir, 'drvs')
    const resultDir = path.join(buildDir, 'results')

    const successes: SuccessResult[] = []
    const cachedSuccesses: CachedSuccessResult[] = []
    const evalFailures: EvalFailure[] = []
    const buildFailures: BuildFailureResult[] = []
    const cachedFailures: CachedFailureResult[] = []
    const dependencyFailures: DependencyFailureResult[] = []
    const errors: ErrorResult[] = []

    core.info("evaluating packages...");
    const evalResults = await instantiate(nixFile, rootAttribute, drvDir, system, evalJobs)
    const derivations: Map<string, Derivation> = new Map()
    for (const r of evalResults) {
      if (r.status === 'success') {
        derivations.set(r.derivation.drvPath, r.derivation)
      } else if (r.status === 'failure') {
        evalFailures.push(r)
      } else if (r.status === 'error') {
        errors.push({
          attr: r.attr,
          error: r.error
        })
      }
    }


    // Create graph of references used to order the builds
    const buildGraph = new BuildGraph();
    for (const [drvPath, drv] of derivations) {
      buildGraph.add(drvPath, drv.references)
    }
    buildGraph.init()

    core.info("building packages...")

    const queue = new PQueue({ concurrency: buildJobs })
    do {
      const node = await buildGraph.takeReady()

      queue.add(async () => {
        if (node.state === 'failed') {
          const drv = derivations.get(node.drvPath)
          if (drv === undefined) {
            return;
          }

          const failedDependencies: string[] = [];
          for (const reference of node.references) {
            if (reference.state === 'failed') {
              failedDependencies.push(reference.drvPath)
            }
          }

          assert(failedDependencies.length !== 0)

          dependencyFailures.push({
            attr: drv.attr,
            drvPath: drv.drvPath,
            failedDependencies
          })

          return;
        }

        const r = await build(node.drvPath, resultDir, cachixCache)

        if (r.status === 'cached_success' || r.status === 'success') {
          buildGraph.succeeded(node)
        } else {
          buildGraph.failed(node)
        }

        const drv = derivations.get(r.drvPath)
        if (drv === undefined) {
          return;
        }

        switch (r.status) {
          case 'success':
            successes.push({
              attr: drv.attr,
              drvPath: drv.drvPath,
            })
            break;
          case 'cached_success':
            cachedSuccesses.push({
              attr: drv.attr,
              drvPath: drv.drvPath,
            })
            break;
          case 'failure':
            buildFailures.push({
              attr: drv.attr,
              drvPath: r.drvPath,
              stderr: r.stderr
            })
            break;
          case 'cached_failure':
            cachedFailures.push({
              attr: drv.attr,
              drvPath: r.drvPath,
            })
            break;
          case 'error':
            errors.push({
              attr: drv.attr,
              drvPath: drv.drvPath,
              error: r.error
            })
        }
      })
    } while (!buildGraph.empty())

    await queue.onIdle()

    core.startGroup("Results")
    core.info(`Successes: ${successes.length}`)
    core.info(`Cached: ${cachedSuccesses.length}`)
    core.info(`Cached failures: ${cachedFailures.length}`)
    core.info(`Evaluation failures: ${evalFailures.length}`)
    core.info(`Dependency failures: ${dependencyFailures.length}`)
    core.info(`Build failures: ${buildFailures.length}`)
    core.info(`Unknown errors: ${errors.length}`)
    core.endGroup()

    for (const r of errors) {
      core.startGroup(`Unknown error building ${r.attr} (${r.drvPath})`)
      core.error(`${r.error}`)
      core.endGroup()
    }

    for (const r of buildFailures) {
      await core.group(
        `Failed to build ${r.attr} (${r.drvPath})`,
        async () => core.warning(r.stderr)
      )
    }

    for (const r of dependencyFailures) {
      core.startGroup(`Dependency of ${r.attr} (${r.drvPath}) failed to build`)
      for (const failedDependency of r.failedDependencies) {
        core.warning(`dependency: ${failedDependency}`)
      }
      core.endGroup()
    }

    for (const r of evalFailures) {
      core.startGroup(`Failed to evaluate ${r.attr}`)
      core.warning(r.stderr)
      core.endGroup()
    }

    core.startGroup("Cached build failures")
    cachedFailures.forEach(r => core.info(`${r.attr} (${r.drvPath})`));
    core.endGroup()

    for (const r of successes) {
      await core.group(
        `Sucessfully built ${r.attr} (${r.drvPath})`,
        () => nix.printLog(r.drvPath!).catch(() => undefined)
      )
    }

    core.startGroup("Already built packages")
    cachedSuccesses.forEach(r => core.info(`${r.attr} (${r.drvPath})`));
    core.endGroup()
  } catch (e: unknown) {
    assert(e instanceof Error)
    core.setFailed(e.message)
  }
}

run()
