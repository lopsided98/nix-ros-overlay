
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, autoware-cmake, autoware-lanelet2-extension, autoware-map-msgs, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-utils-geometry, autoware-utils-math, range-v3, rclcpp, rclpy-message-converter, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-lanelet2-utils";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_lanelet2_utils/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "ac29cda0e88d71d0826e9be03764cf6f4767ff25cd3220a2b6f0f945a3671201";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp autoware-pyplot autoware-test-utils rclpy-message-converter yaml-cpp ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs autoware-planning-msgs autoware-utils-geometry autoware-utils-math range-v3 rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lanelet2_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
