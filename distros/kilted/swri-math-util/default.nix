
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-swri-math-util";
  version = "3.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_math_util/3.9.1-1.tar.gz";
    name = "3.9.1-1.tar.gz";
    sha256 = "0630a50bfc8cd618edd3f5995e70b0ae40a286555e20788e510d78f2413de0e4";
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
