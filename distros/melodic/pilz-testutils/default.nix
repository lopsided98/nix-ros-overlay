
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.16-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.16-1.tar.gz";
    name = "0.5.16-1.tar.gz";
    sha256 = "fe37d1f5c24323ef619cc79954324d6e653cfc7bcbdd1026211a4a6182b8ee11";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
