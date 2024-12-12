# ROS overlay for the Nix package manager

### Easily install the [Robot Operating System (ROS)](http://www.ros.org/) on any Linux distribution

Want to use ROS, but don't want to run Ubuntu? This project uses the power of [Nix](https://nixos.org/nix/) make to it possible to develop and run ROS packages in the same way on any Linux machine.

[Nix](https://nixos.org/nix/) is a distro agnostic package manager that uses a purely functional programming language to reliably and reproducibly build software. These qualities have the potential to make it one of the easiest ways to run ROS on any machine, no matter the operating system.

> [!IMPORTANT]
> The `master` branch is tested and updated when most packages are working. Development occurs on the `develop` branch, and it is expected that this branch will sometimes have many packages that fail to build. Please do not file issues about bugs that only occur in the `develop` branch.

## Setup

1. Install Nix: https://nixos.org/nix/download.html
2. (Optional) [configure Nix to use ROS Cachix binary cache](#configure-binary-cache)
3. Try one of the [examples](#examples)

## Examples

Turtlebot 3 simulation in Gazebo:
```
nix-shell \
  -I nix-ros-overlay=https://github.com/lopsided98/nix-ros-overlay/archive/master.tar.gz \
  --option extra-substituters 'https://ros.cachix.org' \
  --option trusted-public-keys 'cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=' \
  '<nix-ros-overlay/examples/turtlebot3-gazebo.nix>'
# If not on NixOS, nixGL (https://github.com/guibou/nixGL) is needed for OpenGL support
roslaunch turtlebot3_gazebo turtlebot3_world.launch
# Spawn a new nix-shell in a new terminal and then:
roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
```

### Flakes

With [Flakes enabled][flake], the equivalent of the above is:
```
nix develop github:lopsided98/nix-ros-overlay#example-turtlebot3-gazebo
# Then use roslaunch commands as above
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

## Current status

What works:
1. More than 1400 packages successfully built for ROS Noetic (for
   up-to-date numbers and other distros, look at our experimental
   [Hydra instance][] controlled by [@wentasah][])
2. Fully functional ROS development environment using `nix-shell`
3. Automated generation of Nix package definitions using standard ROS tools ([superflore](https://github.com/lopsided98/superflore))

What still needs to be done:
1. Upstream changes to nixpkgs and ROS tools
2. Test on more Linux distributions
3. aarch64 binary cache
4. macOS support

[Hydra instance]: https://hydra.iid.ciirc.cvut.cz/project/nix-ros-overlay
[@wentasah]: https://github.com/wentasah

## Configure Binary Cache

Prebuilt ROS packages are hosted on [Cachix](https://ros.cachix.org) and built using GitHub Actions on public infrastructure.

To use this binary cache, either run `cachix use ros` or manually set the following options in `nix.conf`:
```
substituters = https://cache.nixos.org https://ros.cachix.org
trusted-public-keys = cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=
```

## Frequently Asked Questions

**Q: Why are some packages missing?**

A: All ROS packages published in the package index are potentially available in this overlay. If a package is missing, that probably means one of its system dependencies is not packaged. To determine the offending dependency, find the last "rosdistro sync" PR in this repository and search the missing dependencies list for your package's dependencies. In some cases, you may only need to add a mapping between the rosdep key and the nixpkgs attribute to the [rosdistro YAML files](https://github.com/lopsided98/rosdistro/tree/nixos-support/rosdep). If there is no Nix expression for the package, you should try to package it and submit it upstream to nixpkgs. In some cases it may be appropriate to add the package to this overlay instead, but this should be avoided if possible.

**Q: Why do some packages fail to evaluate?**

A: Some packages fail to evaluate with a error like the following:
```
at: (69:16) in file: /nix/store/7cy8wbxh0jmsy00219hi9pkrqm9lsh5j-source/lib/customisation.nix

    68|     let
    69|       result = f origArgs;
      |                ^
    70|

anonymous function at nix-ros-overlay/distros/<distro>/<package>/default.nix:5:1 called without required argument '<dependency>'
```
This means all the system dependencies of `<package>` were available, so its Nix expression was generated, but some of `<dependency>`'s system dependencies were missing. See the question above for what to do next.

**Q: Why do some packages fail to build?**

There are thousands of ROS packages, so it is infeasible to make sure every package builds. I generally aim to keep at least 80-90% of the packages in a distribution successfully building, but this percentage tends to decrease as distributions get older and develop incompatibilities with newer software. If a package you need does not build, please open an issue or try to fix it yourself. In many cases, build failures occur due to bugs in the packages themselves, and should be fixed upstream. In other cases, overrides may need to be added to this overlay to fix the auto-generated expressions.
