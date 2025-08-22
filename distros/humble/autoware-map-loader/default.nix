
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gmock, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-geography-utils, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, fmt, geometry-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-map-loader";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_map_loader/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "470d5e59b443dbff72b99d18a2cb0f16dd1eeeb55bba0c37c6bdadc1a2576c71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto autoware-lint-common ros-testing ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-geography-utils autoware-lanelet2-extension autoware-map-msgs fmt geometry-msgs pcl pcl-conversions rclcpp rclcpp-components visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_map_loader package";
    license = with lib.licenses; [ asl20 ];
  };
}
