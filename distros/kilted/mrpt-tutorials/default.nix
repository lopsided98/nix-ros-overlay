
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cmake, mvsim, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kilted-mrpt-tutorials";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_tutorials/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "0d8731fb8bdef97619dd305e2a323ee75cc5e86f28687c71b9e7be5de91b4a56";
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
