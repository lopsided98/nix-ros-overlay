# gz needs insecure packages, namely freeimage-unstable-2021-11-01
# to run this dev shell use:
# NIXPKGS_ALLOW_INSECURE=1 nix develop --impure .\#example-ros2-gz

{
  pkgs ? import ../. {},
  rosDistro ? "jazzy",
}:
with pkgs;
with rosPackages.${rosDistro};
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
    ] ++ lib.optionals (builtins.elem rosDistro [ "lyrical" "rolling" ]) [
      # this is for the shellhook portion
      qt6.wrapQtAppsHook
      makeWrapper
    ];
    # Gazebo is currently broken on Wayland
    # https://gazebosim.org/docs/ionic/troubleshooting/#wayland-issues
    shellHook = ''
      unset QT_QPA_PLATFORM
    '' + lib.optionalString (builtins.elem rosDistro [ "lyrical" "rolling" ]) ''
      # Add Qt-related environment variables.
      # https://discourse.nixos.org/t/python-qt-woes/11808/10
      setQtEnvironment=$(mktemp)
      random=$(openssl rand -base64 20 | sed "s/[^a-zA-Z0-9]//g")
      makeWrapper "$(type -p sh)" "$setQtEnvironment" "''${qtWrapperArgs[@]}" --argv0 "$random"
      sed "/$random/d" -i "$setQtEnvironment"
      source "$setQtEnvironment"
    '';
  }
