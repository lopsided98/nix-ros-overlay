
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-auto";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_auto/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "078674af3f67fcf1135941c59f19d558bb4f063082d55e06bb2c4fef0863b2ad";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament linters in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
