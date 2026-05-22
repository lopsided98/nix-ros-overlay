
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, ur-description, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ur-moveit-config";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_moveit_config/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "c1a7fb034490d77a884b889fc5694f7bbfefcef6bc22ff30e18cc4151f1d02aa";
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
