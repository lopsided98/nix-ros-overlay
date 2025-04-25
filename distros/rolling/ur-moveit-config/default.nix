
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, ur-description, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-rolling-ur-moveit-config";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur_moveit_config/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "e00c1e326c97a04dd3f2c682d7ca611416b2bf215db0ba68dab693785ce67195";
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
