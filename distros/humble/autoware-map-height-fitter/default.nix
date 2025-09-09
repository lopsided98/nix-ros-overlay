
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, autoware-cmake, autoware-internal-localization-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, geometry-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-map-height-fitter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_map_height_fitter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e81e37958e090d3b40d0d2f55ee1ffdec2f984db5dc389d49d7484a3bc37b075";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-localization-msgs autoware-lanelet2-extension autoware-map-msgs geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_map_height_fitter package";
    license = with lib.licenses; [ asl20 ];
  };
}
