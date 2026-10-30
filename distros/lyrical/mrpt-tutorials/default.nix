
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cmake, mvsim, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-tutorials";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_tutorials/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "59b8fd1f38eed31bd0b1e97a8e6ccc291fdc25817c2d47e522e88d4003d5d7d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mvsim teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake cmake ];

  meta = {
    description = "Example files used as tutorials for MRPT ROS packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
