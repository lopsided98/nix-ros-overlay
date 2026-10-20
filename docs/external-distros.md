# Generating packages outside this repo

The build functions, environment assembly and fixups here can build ROS
packages whose expressions live in another repository: private packages, a
pinned or private rosdistro, or a tagging scheme of your own. That repo keeps
only what it generated and pulls the rest from this one.

## Generating

`update-overlay` (flake output `packages.<system>.update-overlay`) is a
wrapper around `superflore-gen-nix`, and writes into whatever repository it is
pointed at. Run it from the root of your repo:

```sh
# A few packages, from the rosdistro this repo has locked:
update-overlay --dry-run --no-branch --output-repository-path . \
  --tar-archive-dir .tar --ros-distro jazzy --only my_pkg other_pkg

# A whole distro:
update-overlay --dry-run --no-branch --output-repository-path . \
  --tar-archive-dir .tar --ros-distro jazzy --all
```

Either writes `distros/<distro>/<package>/default.nix` and commits it; `--all`
also writes `distros/<distro>/generated.nix`. The output directory must be a
git repository.

To generate from a different rosdistro, override its `rosdistro` argument
with a flake input or `builtins.fetchGit` result (it reads `rev` and
`lastModifiedDate`):

```nix
nix-ros-overlay.packages.${system}.update-overlay.override { rosdistro = my-rosdistro; }
```

A private rosdistro index can list several distribution files for one
distro, so packages from a private `distribution.yaml` resolve dependencies
on the public ones. Keys missing from rosdep need a `nixos` entry there too.

## Building

`lib` (flake output, or `import "${nix-ros-overlay}/lib/distro-overlays.nix"`
without flakes) has nixpkgs overlays to apply after `overlays.default`:

```nix
overlays = [
  nix-ros-overlay.overlays.default

  # A distro of your own, rosPackages.my-jazzy: the bundled jazzy plus your
  # packages, which replace any of the same name.
  (nix-ros-overlay.lib.rosDistroOverlay {
    name = "my-jazzy";
    distro = "jazzy";
    version = 2;
    generated = [ (nix-ros-overlay.lib.bundledGenerated "jazzy") ./distros/jazzy ];
  })

  # Or, to patch your packages into rosPackages.jazzy itself:
  (nix-ros-overlay.lib.extendRosDistro "jazzy" ./distros/jazzy)
];
```

`rosDistroOverlay` takes the arguments of `distros/distro-overlay.nix`:

| Argument | Meaning |
|---|---|
| `distro` | ROS distro the packages target: `ROS_DISTRO`, and the default for `overridesFrom`. |
| `version` | ROS major version, 1 or 2. |
| `name` | Attribute under `rosPackages`; defaults to `distro`. |
| `generated` | An overlay, a `generated.nix`, a directory of `<pkg>/default.nix`, or a list of those. |
| `overridesFrom` | Bundled distro whose `overrides.nix` and Qt version apply; defaults to `distro`. |
| `upstreamOverrides` | Apply this repo's fixups (default `true`). Fixups for packages missing from `generated` are dropped. |
| `overrides` | Further `rosSelf: rosSuper:` overlays, applied last. |
| `qtVersion` | `"5"` or `"6"`, for the Qt fixups. Defaults by `overridesFrom`, and to `"6"` for a name this repo doesn't know. |

A distro generated in full from a rosdistro of your own needs no bundled
distro under it. Set `generated` to your `distros/<distro>` alone. `distro`
can be your own name; the pnames superflore writes and `ROS_DISTRO` follow
it. If it is a snapshot of a bundled distro, set `overridesFrom` to that
distro so its fixups (vendor package hashes and the like) still apply. The ROS 2 fixups still apply by package name, and fixups for packages
you don't have are dropped. Your set has to include the core packages
(ament, rclcpp and the rest), and nothing falls through to a bundled distro.

`rosPackages.mkRosDistro` takes the same arguments and returns the scope
without adding it to `rosPackages`. Add it there, as `rosDistroOverlay` does,
if you cross-compile: splicing finds the build platform's copy of the distro
at `rosPackages.<name>`.
