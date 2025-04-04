# Environment containing basic ROS2 tools

{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.jazzy;

mkShell {
  nativeBuildInputs = [
    (buildEnv {
      paths = [
        ros-core
        colcon
        geometry-msgs
        turtlebot4-desktop
        turtlebot4-simulator
        slam-toolbox
        nav2-minimal-tb4-sim
        nav2-minimal-tb3-sim
        # rqt metapackages
        rqt-common-plugins
        rqt-tf-tree
        tf2-tools
      ];
    })
  ];
}
