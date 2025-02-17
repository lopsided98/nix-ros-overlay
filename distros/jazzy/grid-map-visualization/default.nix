
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, nav-msgs, rclcpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-visualization";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_visualization/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "012a0fcbf2d562a00a35735e90365a56e24036c420d8b60f8c2bb6912b06b927";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros nav-msgs rclcpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Configurable tool to visualize grid maps in RViz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
