import * as childProcess from 'child_process'
import * as util from 'util'
import * as core from '@actions/core'
import * as exec from '@actions/exec'
import * as nix from './nix'

// Use instead of @actions/exec when we don't want to write the output to the
// log
const execFile = util.promisify(childProcess.execFile)

export async function install(nixpkgs = "channel:nixpkgs-unstable") {
    core.startGroup('Installing Cachix')
    await exec.exec('nix-env', ['-iA', 'cachix', '-f', nixpkgs])
    core.endGroup()
}

export async function use(name: string) {
    await exec.exec('cachix', ['use', name])
}

export async function query(name: string, drvPath: string) {
    return nix.isValidBinaryCachePath(
        drvPath, `https://${name}.cachix.org`)
}

export async function push(name: string, paths: Array<string>) {
    await execFile('cachix', ['push', name].concat(paths))
}