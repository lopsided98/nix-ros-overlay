
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, autoware-cmake, autoware-internal-localization-msgs, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-qos-utils, geometry-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-map-height-fitter";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_map_height_fitter/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "3c0a44c674840fcf473a4e179d36f92aeb490d03b52a27f8b447be952bc801a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-localization-msgs autoware-lanelet2-extension autoware-lanelet2-utils autoware-map-msgs autoware-qos-utils geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_map_height_fitter package";
    license = with lib.licenses; [ asl20 ];
  };
}
