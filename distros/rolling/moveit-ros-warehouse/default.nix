
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-warehouse";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_warehouse/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "962e5f7f346218aabc659d52f17e4b7357327284602452cf8938bcd15508b3fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fmt moveit-common moveit-core moveit-ros-planning rclcpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Components of MoveIt connecting to MongoDB";
    license = with lib.licenses; [ bsd3 ];
  };
}
