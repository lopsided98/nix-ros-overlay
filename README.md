# ROS overlay for the Nix package manager

### Easily install the [Robot Operating System (ROS)](http://www.ros.org/) on any Linux distribution

Want to use ROS, but don't want to run Ubuntu? This project uses the power of [Nix](https://nixos.org/nix/) make to it possible to develop and run ROS packages in the same way on any Linux machine.

[Nix](https://nixos.org/nix/) is a distro agnostic package manager that uses a purely functional programming language to reliably and reproducibly build software. These qualities have the potential to make it one of the easiest ways to run ROS on any machine, no matter the operating system.

<aside class="info">
This overlay is still experimental, so you may encounter some issues. Feel free to file a bug.
</aside>

## Setup

1. Install Nix: https://nixos.org/nix/download.html
2. (Optional) [configure Nix to use ROS binary cache](#configure-binary-cache)
3. Try one of the [examples](#examples)

## Examples

Turtlebot 3 simulation in Gazebo:
```
nix-shell \
  -I nixpkgs=https://github.com/lopsided98/nixpkgs/archive/nix-ros.tar.gz \
  -I nix-ros-overlay=https://github.com/lopsided98/nix-ros-overlay/archive/master.tar.gz \
  --option extra-substituters 'https://hydra.benwolsieffer.com/' \
  --option trusted-public-keys 'nix-cache.benwolsieffer.com-1:fv34TjwD6LKli0BqclR4wRjj21WUry4eaXuaStzvpeI= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=' '<nix-ros-overlay/examples/turtlebot3-gazebo.nix>'
export TURTLEBOT3_MODEL=burger
# If not on NixOS, nixGL (https://github.com/guibou/nixGL) is needed for OpenGL support
roslaunch turtlebot3_gazebo turtlebot3_world.launch
# Spawn a new nix-shell in a new terminal and then:
roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
```

## Current status

What works:
1. More than 1600 packages successfully built for ROS Kinetic
2. Fully function ROS development environment using `nix-shell`
3. Automated generation of Nix package definitions using standard ROS tools ([superflore](https://github.com/lopsided98/superflore))

What still needs to be done:
1. Automaticly update packages on a regular basis
2. Upstream changes to nixpkgs and ROS tools
3. Test on more Linux distributions
3. Linux aarch64 support
4. macOS support

## Configure Binary Cache

Prebuilt ROS packages are hosted on my [Hydra build server](https://hydra.benwolsieffer.com/project/ros). Nix can be configured to download packages from this server, which eliminates the need to build the packages from source.

<aside class="warning">
Adding this binary cache requires you to trust that my build server will not tamper with the prebuilt packages. Also, note that this server also builds packages for all my NixOS systems, so it is possible that some non-ROS related packages will be downloaded from it as well.
</aside>

To use this binary cache, set the following options in `nix.conf`:
```
substituters = https://cache.nixos.org/ https://hydra.benwolsieffer.com/
trusted-public-keys = cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= nix-cache.benwolsieffer.com-1:fv34TjwD6LKli0BqclR4wRjj21WUry4eaXuaStzvpeI=
```