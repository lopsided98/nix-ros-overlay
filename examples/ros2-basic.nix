# Environment containing basic ROS2 tools

with import ../. {};
with rosPackages.foxy;

mkShell {
  nativeBuildInputs = [
    (buildEnv {
      paths = [
        ros-environment
        ros2topic
        ros2node
      ];
    })
  ];
}
