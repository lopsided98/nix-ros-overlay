
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, ur-description, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ur-moveit-config";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_moveit_config/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "6f0a7dbcff3a991eba49856d0b703b9973e7d5b30bf67172d543610509722589";
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
