
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, gtest }:
buildRosPackage {
  pname = "ros-kinetic-libcreate";
  version = "1.6.1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/libcreate-release/archive/release/kinetic/libcreate/1.6.1-0.tar.gz";
    name = "1.6.1-0.tar.gz";
    sha256 = "4c749124a45a335b371fcb36d61c58c4191671efedc8a8b26bdb768a77f52b14";
  };

  buildType = "cmake";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ library for interfacing with iRobot's Create 1 and Create 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
