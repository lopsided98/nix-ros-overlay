
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc }:
buildRosPackage {
  pname = "ros-eloquent-rclc-lifecycle";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/eloquent/rclc_lifecycle/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "2fb3aaee7a903da03a8505a637f8e9cdef2017661407f8386d430c2028d2cdd9";
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
