
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cmake, mvsim, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-rolling-mrpt-tutorials";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_tutorials/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "3622402964e5173f5897df0f6302befdba0e833bc257e310ad95b02e7b13f1f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mvsim teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Example files used as tutorials for MRPT ROS packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
