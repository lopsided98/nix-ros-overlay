
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin }:
buildRosPackage {
  pname = "ros-melodic-ecl-build";
  version = "0.61.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/melodic/ecl_build/0.61.7-0.tar.gz;
    sha256 = "6133fdac73fbedffae19ec5ec6b203225f7e8db9ac1d88fca425d95dc97beae4";
  };

  buildInputs = [ ecl-license ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    #license = lib.licenses.BSD;
  };
}
