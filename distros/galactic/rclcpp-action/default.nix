
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcl-action, rclcpp, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclcpp-action";
  version = "9.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/galactic/rclcpp_action/9.1.0-1.tar.gz";
    name = "9.1.0-1.tar.gz";
    sha256 = "1ff6dbcc94b593fc8d446209379875da570dc26eadfc981757fb8641060622fa";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-cmake rcl-action rclcpp rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
