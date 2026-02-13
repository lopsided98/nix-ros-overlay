
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-kilted-moveit-ros-benchmarks";
  version = "2.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_ros_benchmarks/2.14.3-1.tar.gz";
    name = "2.14.3-1.tar.gz";
    sha256 = "8deaf00aa17fc1758d07332c8009b10c872bcda299aacdb1835c5a20235f9390";
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
