
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-benchmarks";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_benchmarks/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "1afcfa53d1191596e80f3fa43096df04b1b8a3b41408d073663d2fdeab8971ec";
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
