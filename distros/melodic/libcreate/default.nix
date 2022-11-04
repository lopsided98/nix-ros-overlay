
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, gtest }:
buildRosPackage {
  pname = "ros-melodic-libcreate";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/libcreate-release/archive/release/melodic/libcreate/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "fe9eba0445a5ca618d3bc223351c7e5df5f12a1576fa671ba8c05dc0b823b35c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ library for interfacing with iRobot's Create 1 and Create 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
