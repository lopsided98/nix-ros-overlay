
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, geometric-shapes, moveit-common, moveit-core, moveit-msgs, octomap, pluginlib, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-moveit-ros-occupancy-map-monitor";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_ros_occupancy_map_monitor/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "909671aec12b7b4fed68149fcc9ea10c0b92a3dbf7dc8b342cc7408d955f56fd";
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
