
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-ros-planning, moveit-ros-warehouse, pluginlib, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-benchmarks";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_benchmarks/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "214cd7b4d77fb28f2ceaf92ea80ddc15b2aaf6bdde3ab015cca2d2d835a5083d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost launch-param-builder moveit-common moveit-configs-utils moveit-ros-planning moveit-ros-warehouse pluginlib rclcpp tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
