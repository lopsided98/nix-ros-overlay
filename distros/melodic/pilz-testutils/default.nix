
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.15-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.15-1.tar.gz";
    name = "0.5.15-1.tar.gz";
    sha256 = "a0c9b4e1bf638806c8ff5b10180badf4b4a287c8c497b63718018dcaa65e11a2";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
