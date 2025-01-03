
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, grid-map-cmake-helpers, grid-map-core, grid-map-cv, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-octomap, grid-map-ros, grid-map-rviz-plugin, grid-map-visualization, octomap-msgs, octomap-rviz-plugins, octomap-server, python3Packages, rclcpp, rclpy, rviz2, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-demos";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_demos/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "b3ad406fcdb6be73f17c345d56aa34d404edb54d5a49643f587c59e7e47cb1ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs grid-map-core grid-map-cv grid-map-filters grid-map-loader grid-map-msgs grid-map-octomap grid-map-ros grid-map-rviz-plugin grid-map-visualization octomap-msgs octomap-rviz-plugins octomap-server python3Packages.opencv4 rclcpp rclpy rviz2 sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demo nodes to demonstrate the usage of the grid map library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
