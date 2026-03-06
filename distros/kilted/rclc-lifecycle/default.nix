
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rclc-lifecycle";
  version = "6.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/kilted/rclc_lifecycle/6.2.3-1.tar.gz";
    name = "6.2.3-1.tar.gz";
    sha256 = "448f7a2c53b2cbdbc805fa6c88fa55612fc194ae90e08db7559dfe5b4ac7bde2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "rclc lifecycle convenience methods.";
    license = with lib.licenses; [ asl20 ];
  };
}
