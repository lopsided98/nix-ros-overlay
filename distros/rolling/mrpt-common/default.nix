
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-mrpt-common";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_common/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "fd6a3b95fdb8680fa86740522323d8056693ec94c6f7db3a484daceb462c8c9f";
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
