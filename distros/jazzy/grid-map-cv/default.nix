
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, filters, grid-map-cmake-helpers, grid-map-core, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-cv";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_cv/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "f11a83da9014423464e04da4b101c738ab03d71d8adfed5b1d9da493b2712e13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge filters grid-map-core pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between grid maps and OpenCV images.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
