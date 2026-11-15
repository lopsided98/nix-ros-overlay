# Custom ROS distros

The build functions, environment assembly and fixups in this repo can build
ROS packages whose expressions live somewhere else: private packages, a
pinned or private rosdistro, or a release scheme of your own. The repo that
holds them keeps only its own packages and takes the rest from this one.

## Defining a distro

`rosPackages.lib.mkRosDistro` builds a distro's package set as a scope, the
same way the bundled distros are built. Publish the result at
`rosPackages.<distro>`, since that is where cross-compilation splicing looks
for the build platform's copy. With flakes, `lib.rosDistroOverlay` does both,
as a nixpkgs overlay to apply after `overlays.default`:

```nix
overlays = [
  nix-ros-overlay.overlays.default

  # rosPackages.my-jazzy: the bundled jazzy with your packages layered on,
  # replacing any of the same name.
  (nix-ros-overlay.lib.rosDistroOverlay {
    distro = "my-jazzy";
    base = "jazzy";
    packages = ./distros/my-jazzy;
  })
];
```

Without flakes, the same overlay is:

```nix
final: prev: {
  rosPackages = prev.rosPackages // {
    my-jazzy = final.rosPackages.lib.mkRosDistro {
      distro = "my-jazzy";
      base = prev.rosPackages.jazzy;
      packages = ./distros/my-jazzy;
    };
  };
}
```

| Argument | Meaning |
|---|---|
| `distro` | The attribute under `rosPackages`, and `ROS_DISTRO` unless `base` is given. |
| `base` | A distro to layer on: a scope, or with `rosDistroOverlay` also a name under `rosPackages`. |
| `packages` | An overlay, a file holding one (such as a `generated.nix`), a directory of `<pkg>/default.nix`, or a list of those. |
| `overridesFrom` | The bundled distro whose fixups apply. Defaults to `base`'s, or else to `distro`; `null` applies none. |

To change packages afterwards, use `overrideScope` on the result, as with any
other distro.

### Layering on another distro

With `base`, the distro holds base's packages followed by `packages`, and keeps
base's `ROS_DISTRO` and fixups. Packages of the same name replace base's and
still get its fixups. A layered distro can be a base itself, so a product
distro can sit on a company one that sits on a bundled one. Layering onto the
same name (`distro = "jazzy"; base = "jazzy";`) changes `rosPackages.jazzy`
in place.

A layer is built from base's `mkRosDistro` arguments, so an `overrideScope`
applied to base doesn't carry over; apply it to the layer.

### A distro of its own

Without `base`, `packages` is the whole distro, and nothing falls through to a
bundled one. It has to include the core packages (ament, rclcpp and the rest).
`distro` can be a name of your own, and becomes `ROS_DISTRO`.

If the distro is a snapshot of a bundled one, set `overridesFrom` to that
distro so its fixups (vendored source hashes and the like) apply. Fixups for
packages the set doesn't have are dropped rather than left dangling. With
`overridesFrom = null` there are no bundled fixups, and no `qt5or6`; packages
that take it need it added with `overrideScope`.

Packages built with `ament_vendor` read the sources they would otherwise
download from a `vendored-source.json` beside their expression, so a distro
of your own carries those files for its vendor packages.

## Writing the package expressions

Any expressions that call `buildRosPackage` will do. Two generators produce
them:

- [ros2nix](https://github.com/wentasah/ros2nix/) reads `package.xml` files
  from a source checkout. It suits packages that live in your own repos and
  aren't released through bloom, and each package depends only on its own
  directory.
- `update-overlay` (flake output `packages.<system>.update-overlay`) runs
  Superflore, which generates this repo's distros from rosdistro. It suits
  released packages and private rosdistro snapshots. It writes
  `distros/<distro>/<package>/default.nix` into the git repo given by
  `--output-repository-path`, plus `generated.nix` with `--all`:

  ```sh
  update-overlay --dry-run --no-branch --output-repository-path . \
    --tar-archive-dir .tar --ros-distro jazzy --only my_pkg other_pkg
  ```

  To generate from another rosdistro, such as a private index whose
  distribution files add to the public ones, override its `rosdistro`
  argument with a flake input or `builtins.fetchGit` result:
  `update-overlay.override { rosdistro = my-rosdistro; }`.
