
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, filters, grid-map-cmake-helpers, grid-map-core, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-cv";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_cv/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "1831aedac9fbcb1b90a3c7963ed2aebf420791ead4d87e4c5a85d5400b63c463";
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
