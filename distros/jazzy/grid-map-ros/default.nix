
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, grid-map-cmake-helpers, grid-map-core, grid-map-cv, grid-map-msgs, nav-msgs, nav2-msgs, rclcpp, rcutils, rosbag2-cpp, rosbag2-storage-default-plugins, sensor-msgs, std-msgs, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-ros";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_ros/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "4dcb447601a0a77c60daf836225561859745e30826f867a531f116ddc6b67329";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosbag2-storage-default-plugins ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs grid-map-core grid-map-cv grid-map-msgs nav-msgs nav2-msgs rclcpp rcutils rosbag2-cpp sensor-msgs std-msgs tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
