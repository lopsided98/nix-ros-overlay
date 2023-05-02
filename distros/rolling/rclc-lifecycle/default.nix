
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclc-lifecycle";
  version = "3.0.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/rolling/rclc_lifecycle/3.0.9-2.tar.gz";
    name = "3.0.9-2.tar.gz";
    sha256 = "e3511b425b526d85118ff1b73dc61a367a1df28dd683b1e780f4e7f2f17333f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl-lifecycle rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''rclc lifecycle convenience methods.'';
    license = with lib.licenses; [ asl20 ];
  };
}
