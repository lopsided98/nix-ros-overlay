
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, autoware-cmake, autoware-lanelet2-extension, autoware-perception-msgs, autoware-planning-msgs, autoware-utils-geometry, autoware-utils-visualization, autoware-vehicle-info-utils, boost, range-v3, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-marker-utils";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_marker_utils/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "9a1586a592acb854ccb6f5be7d19547352f5dfca06b2e9c589ef387ff3c73f16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-perception-msgs autoware-planning-msgs autoware-utils-geometry autoware-utils-visualization autoware-vehicle-info-utils boost range-v3 rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_marker_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
