
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-common";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_common/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "a0229b961427198c86581a4f140e30c07fb4442264dda4ca8a8b4f92a39090ad";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Common CMake scripts to all MRPT modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
