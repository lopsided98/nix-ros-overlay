
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pilz-testutils";
  version = "0.5.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_testutils/0.5.3-1.tar.gz;
    sha256 = "0a19e1ad12f656f7b1ab0977438f322c5ab9ba19eca2c3ec25f0a81829f5fcb2";
  };

  buildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    #license = lib.licenses.Apache 2.0;
  };
}
