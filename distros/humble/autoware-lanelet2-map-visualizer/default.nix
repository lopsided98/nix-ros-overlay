
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-loader, autoware-map-msgs, launch-testing-ament-cmake, rclcpp, rclcpp-components, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-lanelet2-map-visualizer";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_lanelet2_map_visualizer/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "e4e13af31dbac3a94a8c9c22eef9e036c5441b48d2fd95c778baf56faf505267";
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
