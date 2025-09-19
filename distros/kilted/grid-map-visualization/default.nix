
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, nav-msgs, rclcpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-grid-map-visualization";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map_visualization/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "d801ac0a18b2e84ea69b70d2f860f29450178341dd7910713579dfbade304ba9";
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
