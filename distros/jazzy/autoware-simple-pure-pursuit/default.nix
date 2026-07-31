
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-test-utils, autoware-testing, autoware-utils-rclcpp, autoware-vehicle-info-utils, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-simple-pure-pursuit";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_simple_pure_pursuit/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "dc1534eeadc592eb00a5ba8120d6ba10cb215287326051a4ea99d9d1c6f2c93c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-index-cpp ament-lint-auto autoware-lint-common autoware-test-utils autoware-testing ];
  propagatedBuildInputs = [ autoware-control-msgs autoware-motion-utils autoware-planning-msgs autoware-test-utils autoware-utils-rclcpp autoware-vehicle-info-utils rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_simple_pure_pursuit package";
    license = with lib.licenses; [ asl20 ];
  };
}
