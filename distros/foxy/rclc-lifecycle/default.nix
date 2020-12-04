
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc }:
buildRosPackage {
  pname = "ros-foxy-rclc-lifecycle";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/foxy/rclc_lifecycle/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "e29ad7b87cde21bf2176a7d720127eaca7c504cc7e0895fd427d702c901a7f02";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclc ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''rclc lifecycle convenience methods.'';
    license = with lib.licenses; [ asl20 ];
  };
}
