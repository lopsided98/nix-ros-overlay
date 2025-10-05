# Environment containing basic ROS2 tools
{
  pkgs ? import ../. { },
  rosDistro ? "jazzy",
  package ? "ros-core",
}:
pkgs.mkShell {
  packages = [
    (pkgs.rosPackages.${rosDistro}.buildEnv {
      paths = [
        pkgs.colcon
      ]
      ++ (with pkgs.rosPackages.${rosDistro}; [
        ament-cmake-core
        python-cmake-module

        pkgs.rosPackages.${rosDistro}.${package}
      ]);
    })
  ];
  shellHook = ''
    # Setup ROS 2 shell completion. Doing it in direnv is useless.
    if [[ ! $DIRENV_IN_ENVRC ]]; then
        eval "$(${pkgs.python3Packages.argcomplete}/bin/register-python-argcomplete ros2)"
        eval "$(${pkgs.python3Packages.argcomplete}/bin/register-python-argcomplete colcon)"
    fi
  '';
}
