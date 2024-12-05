import * as childProcess from 'child_process'
import * as util from 'util'
import * as nix from './nix.js'

// Use instead of @actions/exec when we don't want to write the output to the
// log
const execFile = util.promisify(childProcess.execFile)

export async function query(name: string, path: string): Promise<boolean> {
    return nix.isValidBinaryCachePath(
        path, `https://${name}.cachix.org`)
}

export async function push(name: string, paths: string[]) {
    await execFile('cachix', ['push', name].concat(paths))
}
