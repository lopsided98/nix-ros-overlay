
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, autoware-cmake, autoware-lanelet2-extension, autoware-perception-msgs, autoware-planning-msgs, autoware-utils-geometry, autoware-utils-visualization, autoware-vehicle-info-utils, boost, range-v3, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-marker-utils";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_marker_utils/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "23bb837eec5be4f976dfb0aaa2abed76e9bea0eb1076471baf241a8e1a970bbe";
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
