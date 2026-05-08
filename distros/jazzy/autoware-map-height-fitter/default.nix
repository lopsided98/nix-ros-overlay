
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, autoware-cmake, autoware-internal-localization-msgs, autoware-lanelet2-utils, autoware-lint-common, autoware-map-msgs, autoware-qos-utils, geometry-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-map-height-fitter";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_map_height_fitter/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "6d6ff071fd4ea693a3904664cd4b6767a7070e4bf6689a9535f5db10d871efcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-localization-msgs autoware-lanelet2-utils autoware-map-msgs autoware-qos-utils geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_map_height_fitter package";
    license = with lib.licenses; [ asl20 ];
  };
}
