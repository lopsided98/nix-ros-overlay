
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-planners-chomp, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, ur-description, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-rolling-ur-moveit-config";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur_moveit_config/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "66d60d317105aa1508d9dbee0e41251eb3861673324ba8d8d1ea4645525d9c15";
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
