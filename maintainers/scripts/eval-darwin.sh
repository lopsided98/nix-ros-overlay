#!/usr/bin/env nix-shell
#! nix-shell -i bash --pure  -I nixpkgs=. --packages nix findutils
# shellcheck shell=bash
set -euo pipefail

system=${1:-aarch64-darwin}

for distro in $(find distros -mindepth 1 -maxdepth 1 -type d -not -name '*-*' -printf '%f\n'); do
    if [[ $(nix-instantiate --eval --raw -A stdenv.hostPlatform.system) != "$system" ]]; then
        # TODO: We have IFD in zenoh-cpp-vendor, which causes eval
        # failure in these distros. See
        # https://github.com/lopsided98/nix-ros-overlay/pull/912
        [[ $distro = kilted ]] && continue
        [[ $distro = lyrical ]] && continue
        [[ $distro = rolling ]] && continue
    fi
    (
        set -x
        nix-instantiate -A rosPackages."${distro}".ros-base --argstr system "$system"
        nix-instantiate -A rosPackages."${distro}".desktop --argstr system "$system"
    )
done

# Local Variables:
# sh-shell: bash
# End:
