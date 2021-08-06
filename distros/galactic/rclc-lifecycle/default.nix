
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc }:
buildRosPackage {
  pname = "ros-galactic-rclc-lifecycle";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/galactic/rclc_lifecycle/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "7d96192d941fa8f07210cc102081bd47e49f34c8ef014449cb415785e798eefa";
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
