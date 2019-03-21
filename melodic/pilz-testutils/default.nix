
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.2-0.tar.gz;
    sha256 = "0b5fbfa338eb6742e5da883c1e306b0c6e50598aa772c795fc4f092d149bea06";
  };

  nativeBuildInputs = [ catkin roscpp ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    #license = lib.licenses.Apache 2.0;
  };
}
