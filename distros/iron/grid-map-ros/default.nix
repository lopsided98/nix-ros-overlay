
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, grid-map-cmake-helpers, grid-map-core, grid-map-cv, grid-map-msgs, nav-msgs, nav2-msgs, rclcpp, rcutils, rosbag2-cpp, sensor-msgs, std-msgs, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-grid-map-ros";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/iron/grid_map_ros/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "af6a1da131afd2dc910b6aa82fece457eb10154de73f893c357b0b49308d4ea1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs grid-map-core grid-map-cv grid-map-msgs nav-msgs nav2-msgs rclcpp rcutils rosbag2-cpp sensor-msgs std-msgs tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
