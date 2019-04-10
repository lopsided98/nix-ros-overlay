
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, cmake, boost, catkin }:
buildRosPackage {
  pname = "ros-lunar-libcreate";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/AutonomyLab/libcreate-release/archive/release/lunar/libcreate/1.6.1-0.tar.gz;
    sha256 = "a6ff2107569faf46abf7aa1fbb5bffefe609edcbcf161e9ce0e34a82728fbd04";
  };

  buildInputs = [ boost ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ catkin boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ library for interfacing with iRobot's Create 1 and Create 2'';
    #license = lib.licenses.BSD;
  };
}
