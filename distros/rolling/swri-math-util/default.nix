
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-swri-math-util";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_math_util/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "80a486f834f83f0bdd213822ef20bce9dcedb4b5e281e1daa288af6cea0154ae";
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
