#!/usr/bin/env nix-shell
#! nix-shell -i bash --pure --keep NIX_PATH
#! nix-shell -p nix-eval-jobs jq nix rush-parallel

set -euo pipefail

# Scrip to generate/update vendored-source.json files needed by
# patchAmentVendorGit.
#
# Run it from the top-level directory of this repo, i.e.,
# ./maintainers/scripts/update-ament-vendor.sh

# TODO: Remove after nixos-24.11 EOL
if nix-eval-jobs --show-input-drvs --expr null >/dev/null; then
    # Needed since v2.26.0
    nix_eval_jobs="nix-eval-jobs --show-input-drvs"
else
    nix_eval_jobs="nix-eval-jobs"
fi

# Find potential candidates for updating
candidates=$(
    # Extract all rosPackages (ignoring eval errors)
    $nix_eval_jobs --expr '(import ./. {}).rosPackages' |
        # Select only packages that depend on ament-cmake-vendor-package
        jq -r 'select(.inputDrvs|objects|keys|any(contains("ament-cmake-vendor-package"))).attr')

# Some *-vendor packages depend on others. For the update to work,
# dependencies must be updated first followed by dependent packages.
update_order=$(
    nix-instantiate \
        --eval --strict --json \
        --arg candidates "with (import ./. {}).rosPackages; [ $candidates ]" \
        "$(dirname $0)/ament-vendor-update-order.nix" | jq -r '.[]')

ok_cmds=$(mktemp)
trap "rm $ok_cmds" EXIT

# First try updating all packages in parallel. This is the fast path,
# which is sufficient if there are no updates or updates in just a few
# root packages in the dependency tree.
if ! rush --keep-order --verbose -c --succ-cmd-file $ok_cmds -- \
     bash -c '$(nix-build -A rosPackages.{}.updateAmentVendor) 2>&1' <<<"$update_order"
then
    # If the parallel update fails, it's likely due to the update
    # deeper in the dependency tree. Then it is usually more efficient
    # to run all updates serially in the topologic order, which is
    # guaranteed not to fail due to dependencies between to-be-updated
    # packages.
    printf "\nFalling back to serial execution\n"
    rush -j1 --verbose --continue --succ-cmd-file $ok_cmds --propagate-exit-status=false -- \
         bash -c '$(nix-build -A rosPackages.{}.updateAmentVendor) 2>&1' <<<"$update_order"
fi

echo
echo "Attempted updates ($(wc -l <<<"$update_order")):"
echo "$update_order"
echo
echo "Successful updates ($(wc -l <"$ok_cmds")):"
cat "$ok_cmds"
echo
echo "Failed updates ($(($(wc -l <<<"$update_order") - $(wc -l <"$ok_cmds")))):"
for i in $update_order; do
    grep --quiet "$i" "$ok_cmds" || echo "$i failed"
done
