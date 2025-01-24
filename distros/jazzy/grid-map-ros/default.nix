
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, grid-map-cmake-helpers, grid-map-core, grid-map-cv, grid-map-msgs, nav-msgs, nav2-msgs, rclcpp, rcutils, rosbag2-cpp, rosbag2-storage-default-plugins, sensor-msgs, std-msgs, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-ros";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_ros/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "95d75650dd4d2fd8f10f3cf9608e7c1df56ad30667d104957cbd7e87463a47bc";
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
