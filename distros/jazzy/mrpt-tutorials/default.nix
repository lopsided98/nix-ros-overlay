
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cmake, mvsim, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-tutorials";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_tutorials/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "d53b5de888ddd1c0ba5ea5a5403b64d7c46603ce389786dbfcc4c7d1ab730adf";
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
