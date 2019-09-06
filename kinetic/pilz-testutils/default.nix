
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pilz-testutils";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_testutils/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "0fedd3eae4a4ca8f42748ce7de359fe45f233a70d83c0ba377f43787f4d3d1e0";
  };

  buildType = "catkin";
  buildInputs = [ roscpp clang ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
