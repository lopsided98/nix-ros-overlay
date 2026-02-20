
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, autoware-cmake, autoware-lanelet2-extension, autoware-map-msgs, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-utils-geometry, autoware-utils-math, range-v3, rclcpp, rclpy-message-converter, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-lanelet2-utils";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_lanelet2_utils/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "f1d6a80238637ede763b339b46778855bd9618b9f80b349e2cefe9a5e3132a2c";
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
