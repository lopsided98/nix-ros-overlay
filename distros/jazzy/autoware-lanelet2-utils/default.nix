
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, autoware-cmake, autoware-lanelet2-extension, autoware-map-msgs, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-utils-geometry, autoware-utils-math, range-v3, rclcpp, rclpy-message-converter, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-lanelet2-utils";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_lanelet2_utils/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "54a83b0f38bbe6efaf115658ad45937dfbd50996072112fb10fd58bd45c383e6";
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
