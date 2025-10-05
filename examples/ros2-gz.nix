# gz needs insecure packages, namely freeimage-unstable-2021-11-01
# to run this dev shell use:
# NIXPKGS_ALLOW_INSECURE=1 nix develop --impure .\#example-ros2-gz

{pkgs ? import ../. {}}:
with pkgs;
with rosPackages.jazzy;
  mkShell {
    nativeBuildInputs = [
      (buildEnv {
        paths = [
          colcon
          ros-core
          ament-cmake-core
          python-cmake-module

          ros-gz
          gz-launch-vendor
        ];
      })
    ];
    # Gazebo is currently broken on Wayland
    # https://gazebosim.org/docs/ionic/troubleshooting/#wayland-issues
    shellHook = ''
      unset QT_QPA_PLATFORM
    '';
  }
