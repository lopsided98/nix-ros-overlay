
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, geometric-shapes, moveit-common, moveit-core, moveit-msgs, octomap, pluginlib, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-occupancy-map-monitor";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_occupancy_map_monitor/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "f4097ccaf60e6064775b6eee000982f3afe1c62c4075c872e33887e730e425c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometric-shapes moveit-common moveit-core moveit-msgs octomap pluginlib rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Components of MoveIt connecting to occupancy map";
    license = with lib.licenses; [ bsd3 ];
  };
}
