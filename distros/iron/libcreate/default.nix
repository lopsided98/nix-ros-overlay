
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest }:
buildRosPackage {
  pname = "ros-iron-libcreate";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/libcreate-release/archive/release/iron/libcreate/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "04185f631c34b7063c5febde18d1ee4b3ecf8dad53cc2bba52a69c5058a1e7a3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ library for interfacing with iRobot's Create 1 and Create 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
