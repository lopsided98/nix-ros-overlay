# ROS overlay for the Nix package manager

### Easily install the [Robot Operating System (ROS)](http://www.ros.org/) on any Linux distribution

Want to use ROS, but don't want to run Ubuntu? This project uses the power of [Nix](https://nixos.org/nix/) make to it possible to develop and run ROS packages in the same way on any Linux machine.

[Nix](https://nixos.org/nix/) is a distro agnostic package manager that uses a purely functional programming language to reliably and reproducibly build software. These qualities have the potential to make it one of the easiest ways to run ROS on any machine, no matter the operating system.

> [!IMPORTANT]
> The `master` branch is tested and updated when most packages are working. Development occurs on the `develop` branch, and it is expected that this branch will sometimes have many packages that fail to build. Please do not file issues about bugs that only occur in the `develop` branch.

## Current status

| Distro  | master                                           | develop                                            | develop + nixos-unstable                             |
|:--------|:-------------------------------------------------|:---------------------------------------------------|:-----------------------------------------------------|
| Humble  | [![humble-master-badge][]][humble-master-link]   | [![humble-develop-badge][]][humble-develop-link]   | [![humble-unstable-badge][]][humble-unstable-link]   |
| Jazzy   | [![jazzy-master-badge][]][jazzy-master-link]     | [![jazzy-develop-badge][]][jazzy-develop-link]     | [![jazzy-unstable-badge][]][jazzy-unstable-link]     |
| Kilted  | [![kilted-master-badge][]][kilted-master-link]   | [![kilted-develop-badge][]][kilted-develop-link]   | [![kilted-unstable-badge][]][kilted-unstable-link]   |
| Lyrical | [![lyrical-master-badge][]][lyrical-master-link] | [![lyrical-develop-badge][]][lyrical-develop-link] | [![lyrical-unstable-badge][]][lyrical-unstable-link] |
| Rolling | [![rolling-master-badge][]][rolling-master-link] | [![rolling-develop-badge][]][rolling-develop-link] | [![rolling-unstable-badge][]][rolling-unstable-link] |
|         | ![nixpkgs-master-badge][]                        | ![nixpkgs-develop-badge][]                         |                                                      |

[humble-master-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fmaster-humble-x86_64%2Fshield
[humble-master-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/master-humble-x86_64
[jazzy-master-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fmaster-jazzy-x86_64%2Fshield
[jazzy-master-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/master-jazzy-x86_64
[kilted-master-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fmaster-kilted-x86_64%2Fshield
[kilted-master-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/master-kilted-x86_64
[lyrical-master-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fmaster-lyrical-x86_64%2Fshield
[lyrical-master-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/master-lyrical-x86_64
[rolling-master-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fmaster-rolling-x86_64%2Fshield
[rolling-master-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/master-rolling-x86_64

[humble-develop-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fdevelop-humble-x86_64%2Fshield
[humble-develop-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/develop-humble-x86_64
[jazzy-develop-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fdevelop-jazzy-x86_64%2Fshield
[jazzy-develop-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/develop-jazzy-x86_64
[kilted-develop-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fdevelop-kilted-x86_64%2Fshield
[kilted-develop-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/develop-kilted-x86_64
[lyrical-develop-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fdevelop-lyrical-x86_64%2Fshield
[lyrical-develop-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/develop-lyrical-x86_64
[rolling-develop-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Fdevelop-rolling-x86_64%2Fshield
[rolling-develop-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/develop-rolling-x86_64

[humble-unstable-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Funstable-humble-x86_64%2Fshield
[humble-unstable-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/unstable-humble-x86_64
[jazzy-unstable-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Funstable-jazzy-x86_64%2Fshield
[jazzy-unstable-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/unstable-jazzy-x86_64
[kilted-unstable-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Funstable-kilted-x86_64%2Fshield
[kilted-unstable-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/unstable-kilted-x86_64
[lyrical-unstable-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Funstable-lyrical-x86_64%2Fshield
[lyrical-unstable-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/unstable-lyrical-x86_64
[rolling-unstable-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fhydra.iid.ciirc.cvut.cz%2Fjobset%2Fnix-ros-overlay%2Funstable-rolling-x86_64%2Fshield
[rolling-unstable-link]: https://hydra.iid.ciirc.cvut.cz/jobset/nix-ros-overlay/unstable-rolling-x86_64

[nixpkgs-master-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fnix-ros-overlay.iid.ciirc.cvut.cz%2Fbadge%2Fnixpkgs-date-master.json
[nixpkgs-develop-badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fnix-ros-overlay.iid.ciirc.cvut.cz%2Fbadge%2Fnixpkgs-date-develop.json

What works:
1. Most of the packages build successfully (see the table above)
2. Fully functional ROS development environment using `nix-shell`
3. Automated generation of Nix package definitions using standard ROS tools ([superflore](https://github.com/lopsided98/superflore))

What still needs to be done:
1. Updating ROS packages to recent nixpkgs and upstreaming that
2. macOS support

## Setup

1. Install Nix: https://nixos.org/nix/download.html
2. (Optional) [configure Nix to use ROS Cachix binary cache](#configure-binary-cache)
3. Try one of the [examples](#examples)

## Examples

<!-- TODO Add Turtlebot 4 or other example with Gazebo simulation in Gazebo: -->

ROS 2 Jazzy Desktop environment:

```sh
nix-shell \
  -I nix-ros-overlay=https://github.com/lopsided98/nix-ros-overlay/archive/master.tar.gz \
  --option extra-substituters 'https://ros.cachix.org' \
  --option extra-trusted-public-keys 'ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=' \
  '<nix-ros-overlay/examples/ros2-desktop.nix>' --argstr rosDistro jazzy
# Run command-line talker/listener demo
ros2 launch demo_nodes_cpp talker_listener_launch.xml
```

If you want to run graphical applications like `rviz2` on non-NixOS
distribution, we recommend to use [nix-system-graphics][] or
[nixGL][]. The latter is less convenient but doesn't need to change
system-wide configuration.

[nix-system-graphics]: https://github.com/soupglasses/nix-system-graphics
[nixGL]: https://github.com/nix-community/nixGL

### Flakes

With [Flakes enabled][flake], the equivalent of the above is:
```
nix develop github:lopsided98/nix-ros-overlay/master#example-ros2-desktop-jazzy
# Run command-line talker/listener demo
ros2 launch demo_nodes_cpp talker_listener_launch.xml
```

Using the overlay in your `flake.nix`-based project could look like this:

<!-- The following comment is for https://github.com/zimbatm/mdsh -->
<!-- [$ flake.nix](examples/flake/flake.nix) as nix -->

```nix
{
  inputs = {
    nix-ros-overlay.url = "github:lopsided98/nix-ros-overlay/master";
    nixpkgs.follows = "nix-ros-overlay/nixpkgs";  # IMPORTANT!!!
  };
  outputs = { self, nix-ros-overlay, nixpkgs }:
    nix-ros-overlay.inputs.flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ nix-ros-overlay.overlays.default ];
        };
      in {
        devShells.default = pkgs.mkShell {
          name = "Example project";
          packages = [
            pkgs.colcon
            # ... other non-ROS packages
            (with pkgs.rosPackages.humble; buildEnv {
              underlay = true;
              paths = [
                ros-core
                # ... other ROS packages
              ];
            })
          ];
        };
      });
  nixConfig = {
    extra-substituters = [ "https://ros.cachix.org" ];
    extra-trusted-public-keys = [ "ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=" ];
  };
}
```
You can use the following command to use the above template easily:

    nix flake init --template github:lopsided98/nix-ros-overlay

[flake]: https://wiki.nixos.org/wiki/Flakes

## Configure Binary Cache

Prebuilt ROS packages (for x86_64-linux and aarch64-linux) are hosted on [Cachix](https://ros.cachix.org) and built [using GitHub Actions on public infrastructure](https://github.com/lopsided98/nix-ros-overlay/actions/workflows/build.yaml).

To use this binary cache, either run `cachix use ros` or manually set the following options in `nix.conf`:
```
substituters = https://cache.nixos.org https://ros.cachix.org
trusted-public-keys = cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=
```

> [!WARNING]
> Unfortunately, the capacity of the free [Cachix
> cache](https://ros.cachix.org) is no longer sufficient, and packages
> may be evicted after a short time or not be present at all. We are
> [working on resolving the situation][cache-issue]. Until this is
> resolved (no ETA yet), you can use the **experimental binary cache**
> maintained by [@wentasah][] and populated by his [Hydra][Hydra
> instance]. Note that 100% availability is not guaranteed, and
> bandwidth may be limited, especially outside of Europe.
>
> To use the experimental binary cache, append the following to your `nix.conf`:
>
> ```
> extra-substituters = https://attic.iid.ciirc.cvut.cz/ros
> extra-trusted-public-keys = ros:JR95vUYsShSqfA1VTYoFt1Nz6uXasm5QrcOsGry9f6Q=
> ```

[cache-issue]: https://github.com/lopsided98/nix-ros-overlay/issues/754
[@wentasah]: https://github.com/wentasah

## Frequently Asked Questions

**Q: Why do some some packages fail to evaluate due to `_unresolved_<dependency>` arguments?**

A: If the package fails to evaluate with error like the following:
```
error: evaluation aborted with the following error message:
'lib.customisation.callPackageWith: Function called without required
argument "_unresolved_<dependency>" at /.../nix-ros-overlay/distros/<distro>/<package>/default.nix:5'
```
it means the package `<dependency>` is missing a `nixos` key in
[rosdep YAML files][rosdep]. In some cases, it is sufficient to find a
corresponding package in nixpkgs and submit a PR adding the rosdep
entries. If there is no Nix expression for the package, you should try
to package it and submit it upstream to nixpkgs. In some cases it may
be appropriate to add the package to this overlay instead, but this
should be avoided if possible.

[rosdep]: https://github.com/ros/rosdistro/tree/master/rosdep

**Q: Why do some packages fail to build?**

There are thousands of ROS packages, so it is infeasible to make sure every package builds. I generally aim to keep at least 80-90% of the packages in a distribution successfully building, but this percentage tends to decrease as distributions get older and develop incompatibilities with newer software. If a package you need does not build, please open an issue or try to fix it yourself. In many cases, build failures occur due to bugs in the packages themselves, and should be fixed upstream. In other cases, overrides may need to be added to this overlay to fix the auto-generated expressions.

**Q: Can I update the overlay to match the latest ROS?**

The overlay is updated semi-automatically approximately every few
weeks. If you want to try a more recent ROS version, you can update
the whole overlay locally by running the following commands from
repository root:

```
nix flake update rosdistro
nix run .#update-overlay
```

It needs to download source tarballs of all ROS packages from all
distributions, which can take long time. If you're interested in just
a specific distribution, you can specify superflore arguments on the
command line. For example, the following command updates just the
`jazzy` distro:

```
nix run .#update-overlay -- --dry-run --output-repository-path . --tar-archive-dir .tar --no-branch --ros-distro jazzy
```

You can also regenerate the overlay from a custom version of the
rosdistro repository:

```sh
nix run .#update-overlay --override-input rosdistro /path/to/local/rosdistro
```

**Q: Do you provide packages for ROS 1 or Gazebo Classic?**

After End-of-Life of Gazebo Classic and ROS 1 in January resp. May
2025, we removed them from the `master` and `develop` branches.
However, you can still access them in the `ros1-25.05` branch, which
is built against `nixos-25.05` branch of _nixpkgs_. We will accept PRs
for this branch at least until the end of 2025. If you need some ROS 1
package, which fails to compile, it might be worth looking whether
[ROS-O](https://github.com/ros-o/ros-o) GitHub organization has some
patches for it.
