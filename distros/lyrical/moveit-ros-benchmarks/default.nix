
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-lyrical-moveit-ros-benchmarks";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_ros_benchmarks/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "87f30974ad4be492c245ab50813ed7c4c389baa34d25dc2d14d4605c8ef05383";
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
