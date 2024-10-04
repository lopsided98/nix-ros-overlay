
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, moveit-common, moveit-core, moveit-ros-planning, rclcpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-warehouse";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_warehouse/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "eceab755bf2bab607ef68e4df7deac9e4455330c2f89831283d2f652fa999a84";
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
