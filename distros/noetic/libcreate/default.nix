
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, gtest }:
buildRosPackage {
  pname = "ros-noetic-libcreate";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/libcreate-release/archive/release/noetic/libcreate/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "8bc46366b2db0f0cdcf37790f74d2dde46bb3e552f4a42d6701a41f82dcd14c7";
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
