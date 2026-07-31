
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-loader, autoware-map-msgs, autoware-utils-visualization, launch-testing-ament-cmake, rclcpp, rclcpp-components, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-lanelet2-map-visualizer";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_lanelet2_map_visualizer/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "6d2f1e60d24eebe3242af545db3b3222d6af548262829fd87a53471fd837b1a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common autoware-map-loader launch-testing-ament-cmake ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs autoware-utils-visualization rclcpp rclcpp-components visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lanelet2_map_visualizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
