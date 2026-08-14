#!/usr/bin/env nix-shell
#! nix-shell -i python3 --pure --keep HOME
#! nix-shell -p python3 nix cacert

# Script to refresh the foxglove-sdk release hashes used by the
# foxglove-bridge override in distros/*/overrides.nix.
#
# For every platform listed in a distro's systemToPlatform mapping, it
# prefetches the corresponding foxglove-sdk release archive for the
# version pinned as FOXGLOVE_SDK_VERSION and rewrites systemToHash with
# the freshly computed hashes.
#
# Run it from the top-level directory of this repo, i.e.,
# ./maintainers/scripts/update-foxglove-sdk.sh

import json
import re
import subprocess
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent.parent

VERSION_RE = re.compile(r'FOXGLOVE_SDK_VERSION\s*=\s*"([^"]+)";')
PLATFORM_BLOCK_RE = re.compile(
    r"systemToPlatform\s*=\s*\{(?P<body>.*?)\n(?P<indent>[ \t]*)\};", re.DOTALL
)
HASH_BLOCK_RE = re.compile(
    r"systemToHash\s*=\s*\{(?P<body>.*?)\n(?P<indent>[ \t]*)\};", re.DOTALL
)
ENTRY_RE = re.compile(r'"([\w-]+)"\s*=\s*"([\w.-]+)";')


def prefetch_hash(version: str, platform: str) -> str:
    url = (
        f"https://github.com/foxglove/foxglove-sdk/releases/download/"
        f"sdk/v{version}/foxglove-v{version}-cpp-{platform}.zip"
    )
    print(f"    prefetching {url}", file=sys.stderr)
    result = subprocess.run(
        ["nix", "store", "prefetch-file", "--json", "--hash-type", "sha256", url],
        check=True,
        capture_output=True,
        text=True,
    ).stdout
    return json.loads(result)["hash"]


def update_file(path: Path) -> bool:
    text = path.read_text()

    version_match = VERSION_RE.search(text)
    platform_match = PLATFORM_BLOCK_RE.search(text)
    hash_match = HASH_BLOCK_RE.search(text)
    if not (version_match and platform_match and hash_match):
        return False

    version = version_match.group(1)
    systems = ENTRY_RE.findall(platform_match.group("body"))
    if not systems:
        return False

    print(f"{path}: foxglove-sdk {version}", file=sys.stderr)

    indent = None
    for line in hash_match.group("body").splitlines():
        if line.strip():
            indent = line[: len(line) - len(line.lstrip())]
            break
    if indent is None:
        indent = "        "

    lines = []
    for system, platform in systems:
        print(f"  {system} -> {platform}", file=sys.stderr)
        sri = prefetch_hash(version, platform)
        lines.append(f'{indent}"{system}" = "{sri}";')
    new_body = "\n" + "\n".join(lines)

    new_block = f'systemToHash = {{{new_body}\n{hash_match.group("indent")}}};'
    text = text[: hash_match.start()] + new_block + text[hash_match.end() :]
    path.write_text(text)
    return True


def main() -> None:
    overrides = sorted(REPO_ROOT.glob("distros/*/overrides.nix"))
    updated = []
    for path in overrides:
        if "FOXGLOVE_SDK_VERSION" in path.read_text() and update_file(path):
            updated.append(path)

    print(file=sys.stderr)
    if updated:
        print("Updated:", file=sys.stderr)
        for path in updated:
            print(f"  {path.relative_to(REPO_ROOT)}", file=sys.stderr)
    else:
        print("No files updated.", file=sys.stderr)


if __name__ == "__main__":
    main()

# Local Variables:
# mode: python
# End:
