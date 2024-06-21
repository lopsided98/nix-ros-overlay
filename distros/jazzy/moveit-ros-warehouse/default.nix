
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-warehouse";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_warehouse/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "8f90ddf0e1a21a4ef657ac98771f7dfd00b52ffa60dcaa53f4185b4abb061fcf";
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
