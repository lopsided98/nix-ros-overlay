
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, ur-description, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-kilted-ur-moveit-config";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/kilted/ur_moveit_config/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "eeb9e295d2bfb013ed0537e38b7cca001bf5365f14335c5affc885c15d9924d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-configs-utils moveit-kinematics moveit-planners moveit-planners-chomp moveit-ros-move-group moveit-ros-visualization moveit-servo moveit-simple-controller-manager ur-description warehouse-ros-sqlite xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An example package with MoveIt2 configurations for UR robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
