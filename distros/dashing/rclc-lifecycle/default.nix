
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc }:
buildRosPackage {
  pname = "ros-dashing-rclc-lifecycle";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/dashing/rclc_lifecycle/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a5881f4b4e139323a3a63bf2527b7d3b05ffc4341fd63aeb8bbeca562555bcc2";
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
