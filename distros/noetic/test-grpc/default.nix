
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grpc, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-test-grpc";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/test_grpc/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "5ce0766d47d3a7f2200b7f91a0dc04253964d7937a9045d6c00c32ad1d777801";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ grpc roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A package for testing the grpc package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
