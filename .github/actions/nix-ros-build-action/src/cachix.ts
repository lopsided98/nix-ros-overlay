import * as childProcess from 'child_process'
import * as util from 'util'
import * as nix from './nix'

// Use instead of @actions/exec when we don't want to write the output to the
// log
const execFile = util.promisify(childProcess.execFile)

export async function query(name: string, drvPath: string) {
    return nix.isValidBinaryCachePath(
        drvPath, `https://${name}.cachix.org`)
}

export async function push(name: string, paths: string[]) {
    await execFile('cachix', ['--compression-method', 'zstd', 'push', name].concat(paths))
}
