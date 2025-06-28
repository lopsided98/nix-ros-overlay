
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-swri-math-util";
  version = "3.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_math_util/3.8.4-1.tar.gz";
    name = "3.8.4-1.tar.gz";
    sha256 = "7d003e91feeff8f2a7f5da20286cf7a24a64fdfc111072277f2d03f9df44ace3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used math utility code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
