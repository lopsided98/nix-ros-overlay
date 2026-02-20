
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-geography-utils, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, fmt, geometry-msgs, launch-testing-ament-cmake, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-map-loader";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_map_loader/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "91dfb2dd7805278ee39ec8d5cd1fc0ead268ebbcffa635ed3db9bdd2e0e60d47";
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
