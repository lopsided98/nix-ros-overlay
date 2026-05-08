
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-geography-utils, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, fmt, geometry-msgs, launch-testing-ament-cmake, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-map-loader";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_map_loader/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "096aea1997dbda2ac18dcce6ab59d7a43f1a01c26f29f5db583c3b9aabdb2a43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto autoware-lint-common launch-testing-ament-cmake ros-testing ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-geography-utils autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs fmt geometry-msgs pcl pcl-conversions rclcpp rclcpp-components visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_map_loader package";
    license = with lib.licenses; [ asl20 ];
  };
}
