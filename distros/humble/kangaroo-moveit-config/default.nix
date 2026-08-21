
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, kangaroo-description, launch-pal, moveit-configs-utils, moveit-kinematics, moveit-planners-chomp, moveit-planners-ompl, moveit-ros-control-interface, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, pal-sea-arm-moveit-config }:
buildRosPackage {
  pname = "ros-humble-kangaroo-moveit-config";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_moveit_config-release/archive/release/humble/kangaroo_moveit_config/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "907dccb0285e3d31af1d744cb13ec347cca61ef769823dd87eddc77cd62d6591";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ kangaroo-description launch-pal moveit-configs-utils moveit-kinematics moveit-planners-chomp moveit-planners-ompl moveit-ros-control-interface moveit-ros-move-group moveit-ros-perception moveit-ros-visualization pal-sea-arm-moveit-config ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the kangaroo with the MoveIt! Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
