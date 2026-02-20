
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-loader, autoware-map-msgs, launch-testing-ament-cmake, rclcpp, rclcpp-components, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-lanelet2-map-visualizer";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_lanelet2_map_visualizer/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "30229397419f1ef2a1b034d5dcf8a8398392a6532cc66221a24ec68ca27b5450";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common autoware-map-loader launch-testing-ament-cmake ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs rclcpp rclcpp-components visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lanelet2_map_visualizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
