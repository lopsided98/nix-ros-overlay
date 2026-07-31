
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-geography-utils, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, fmt, geometry-msgs, launch-testing-ament-cmake, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-map-loader";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_map_loader/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "2291693bad79469463941dbdb74548063d86a550b00fb991d5ba341a43bfa2f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gmock ament-index-cpp ament-lint-auto autoware-lint-common launch-testing-ament-cmake ros-testing ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-geography-utils autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs fmt geometry-msgs pcl pcl-conversions rclcpp rclcpp-components visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_map_loader package";
    license = with lib.licenses; [ asl20 ];
  };
}
