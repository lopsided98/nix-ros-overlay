
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, grid-map-cmake-helpers, grid-map-core, grid-map-cv, grid-map-msgs, nav-msgs, nav2-msgs, rclcpp, rcutils, rosbag2-cpp, sensor-msgs, std-msgs, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-ros";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_ros/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "19c0b4e8212acb31904b2797f6771562eb3913054d81c1504b7725dc853d4302";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs grid-map-core grid-map-cv grid-map-msgs nav-msgs nav2-msgs rclcpp rcutils rosbag2-cpp sensor-msgs std-msgs tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
