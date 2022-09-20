
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometric-shapes, moveit-common, moveit-core, moveit-msgs, octomap, pluginlib, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-occupancy-map-monitor";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_occupancy_map_monitor/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "e31d678dff6b2da0a7dbdcf874531cd8f4b00bd572566a6044cc361637cec253";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometric-shapes moveit-core moveit-msgs octomap pluginlib rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt connecting to occupancy map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
