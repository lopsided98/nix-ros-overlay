
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclc-lifecycle";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/jazzy/rclc_lifecycle/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "b2520f06a7de69b57316f5a5e85cb07d220263d1b517bcbbc0913468e1e8bf10";
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
