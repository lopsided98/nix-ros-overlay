
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc }:
buildRosPackage {
  pname = "ros-foxy-rclc-lifecycle";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/foxy/rclc_lifecycle/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cb99511b0ec97a571c0e624077dddabdfeeceaa2f62783018a8c17393bcbc25b";
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
