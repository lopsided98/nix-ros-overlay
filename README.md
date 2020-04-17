# ROS overlay for the Nix package manager

### Easily install the [Robot Operating System (ROS)](http://www.ros.org/) on any Linux distribution

Want to use ROS, but don't want to run Ubuntu? This project uses the power of [Nix](https://nixos.org/nix/) make to it possible to develop and run ROS packages in the same way on any Linux machine.

[Nix](https://nixos.org/nix/) is a distro agnostic package manager that uses a purely functional programming language to reliably and reproducibly build software. These qualities have the potential to make it one of the easiest ways to run ROS on any machine, no matter the operating system.

> This overlay is still experimental, so you may encounter some issues. Feel free to file a bug.

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

## Current status

What works:
1. More than 1700 packages successfully built for ROS Kinetic
2. Fully functional ROS development environment using `nix-shell`
3. Automated generation of Nix package definitions using standard ROS tools ([superflore](https://github.com/lopsided98/superflore))

What still needs to be done:
1. Upstream changes to nixpkgs and ROS tools
2. Test on more Linux distributions
3. aarch64 binary cache
4. macOS support

## Configure Binary Cache

Prebuilt ROS packages are hosted on [Cachix](https://ros.cachix.org) and built using GitHub Actions on public infrastructure.

To use this binary cache, either run `cachix use ros` or manually set the following options in `nix.conf`:
```
substituters = https://cache.nixos.org https://ros.cachix.org
trusted-public-keys = cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=
```
