
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl-lifecycle, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rclc-lifecycle";
  version = "6.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/kilted/rclc_lifecycle/6.2.0-2.tar.gz";
    name = "6.2.0-2.tar.gz";
    sha256 = "474fc2ef6d90c4643b9a907d2b4de81baef272e618312a248c225770e95bbf46";
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
