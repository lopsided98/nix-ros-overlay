
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-kilted-moveit-ros-benchmarks";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_ros_benchmarks/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "fc2094c1c1ef08ee5290e0fe8d421c5b7248a15fdfa0c8339d17110ef0869159";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-core ];
  propagatedBuildInputs = [ boost launch-param-builder moveit-common moveit-configs-utils moveit-ros-planning moveit-ros-warehouse pluginlib rclcpp tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Enhanced tools for benchmarks in MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
