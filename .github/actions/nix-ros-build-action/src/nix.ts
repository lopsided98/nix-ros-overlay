import * as exec from '@actions/exec'
import assert from 'assert'
import * as childProcess from 'child_process'
import fetch from 'node-fetch'
import * as util from 'util'
import readline from 'readline';
import { Readable } from 'stream';

// Don't use @actions/exec because we don't want these commands to be printed
// to the log
const execFile = util.promisify(childProcess.execFile)

export async function listAttrs(
  file: string,
  parentAttr: string
): Promise<string[]> {
  const { stdout } = await execFile('nix-instantiate', [
    '--eval', '--json', '-E',
    `with (import (./. + "/${file}") {}); builtins.attrNames (${parentAttr})`
  ])
  return JSON.parse(stdout).map((a: string) => `${parentAttr}.${a}`)
}

interface EvalJob {
  attr: string,
  drvPath: string,
}

async function* readLinesAsync(stream: Readable): AsyncGenerator<string> {
  const rl = readline.createInterface({
    input: stream,
    crlfDelay: Infinity
  });

  for await (const line of rl) {
    yield line;
  }
}

export async function evalJobs(
  file: string,
  parentAttr: string
): Promise<EvalJob[]> {
  const proc = childProcess.spawn('nix-eval-jobs', [
    '--gc-roots-dir', 'gcroot', file, '--select', `pkgs: pkgs.${parentAttr}`
  ], {
    // Ignore stderr to prevent infinite blocking on full pipe
    stdio: ['inherit', 'pipe', 'ignore']
  })

  const jobs: EvalJob[] = [];

  // Read lines asynchronously, because the output can be bigger that
  // max. stdout buffer size
  for await (const line of readLinesAsync(proc.stdout)) {
    if (line.trim()) {
      try {
        const parsed = JSON.parse(line);
        jobs.push(parsed);
      } catch (error) {
        console.error('Failed to parse:', line, error);
      }
    }
  }

  await new Promise<void>((resolve, reject) => {
    proc.on('close', () => resolve());
    proc.on('error', reject);
  });

  return jobs;
}

function parseLines(lines: string): string[] {
  return lines.split('\n')
    .map(r => r.trim())
    .filter(r => r !== '')
}

export async function getRequisites(path: string): Promise<string[]> {
  const { stdout: requisites } = await execFile(
    'nix-store', ['--query', '--requisites', path]
  )
  return parseLines(requisites)
}

export async function getReferences(path: string): Promise<string[]> {
  const { stdout: references } = await execFile(
    'nix-store', ['--query', '--references', path]
  )
  return parseLines(references)
}

export async function getOutputs(drvPath: string): Promise<string[]> {
  const { stdout: outputs } = await execFile(
    'nix-store', ['--query', '--outputs', drvPath]
  )
  return parseLines(outputs)
}

export async function getConfig(key: string): Promise<string> {
  const { stdout: config } = await execFile(
    'nix', ['--experimental-features', 'nix-command', 'config', 'show', key]
  )
  return config
}

export async function getSubstituters(): Promise<string[]> {
  return (await getConfig("substituters")).split(/\s+/).filter(s => s.length !== 0)
}

const nixPathHashRegExp = RegExp(/^\/nix\/store\/([^/-]{32})-/)

export async function isValidBinaryCachePath(
  path: string,
  cacheUrl: string
): Promise<boolean> {
  const match = path.match(nixPathHashRegExp)
  if (!match) {
    throw Error(`Invalid Nix path: ${path}`)
  }
  const hash = match[1]
  const response = await fetch(
    new URL(`/${hash}.narinfo`, cacheUrl).toString(),
    { method: 'HEAD' }
  )
  return response.ok
}

export async function isDrvCachedOn(
  drvPath: string,
  cacheUrl: string
): Promise<boolean> {
  const outputs = await getOutputs(drvPath)

  return (await Promise.all(outputs.map(output => isValidBinaryCachePath(output, cacheUrl))))
    .every(valid => valid)
}

export async function isDrvCached(
  drvPath: string,
): Promise<boolean> {
  const outputs = await getOutputs(drvPath)
  const substituters = await getSubstituters();

  try {
    return await Promise.any(substituters.map(
      async s => {
        if ((await Promise.all(outputs.map(output => isValidBinaryCachePath(output, s)))).every(v => v)) {
          return true
        } else {
          // Reject on cache-miss, so Promise.any() will keep trying the other substituters
          throw false
        }
      }
    ))
  } catch (e: unknown) {
    if (e instanceof AggregateError) {
      // All three queries failed or had cache misses
      return false;
    } else {
      // Shouldn't happen
      throw e
    }
  }

}

export async function printLog(drvPath: string) {
  await exec.exec('nix-store', ['--read-log', drvPath])
}

export async function instantiate(
  file: string,
  attribute: string,
  root?: string,
  system?: string
): Promise<string[]> {
  const args = [
    file, '-A', attribute,
  ]
  if (root !== undefined) {
    args.push('--add-root', root, '--indirect')
  }
  if (system !== undefined) {
    args.push('--option', 'system', system)
  }
  try {
    const { stdout: drvPaths } = await execFile('nix-instantiate', args)
    return parseLines(drvPaths)
  } catch (e: unknown) {
    assert(e instanceof Object && "stderr" in e)
    throw e.stderr
  }
}

export async function realize(
  drvPath: string,
  root: string
): Promise<string[]> {
  try {
    const { stdout: resultPaths } = await execFile('nix-store', [
      '--realise', drvPath, '--no-build-output',
      '--add-root', root, '--indirect'
    ])
    return parseLines(resultPaths)
  } catch (e: unknown) {
    assert(e instanceof Object && "stderr" in e)
    throw e.stderr
  }
}