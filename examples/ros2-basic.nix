# Environment containing basic ROS2 tools

{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.humble;

mkShell {
  nativeBuildInputs = [
    (buildEnv {
      paths = [
        ros-environment
        ros2topic
        ros2node
        geometry-msgs
      ];
    })
  ];
}
