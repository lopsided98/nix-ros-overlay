
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-tools, catkin, ecl-core, ecl-lite, ecl-manipulation, ecl-navigation }:
buildRosPackage {
  pname = "ros-melodic-ecl";
  version = "0.60.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/melodic/ecl/0.60.3-0.tar.gz;
    sha256 = "bbcf9a596091fbf4158e2593c652fe8329338bcf39ab3258abc93f4ac42289ae";
  };

  propagatedBuildInputs = [ ecl-core ecl-lite ecl-manipulation ecl-tools ecl-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage bringing all of ecl together.'';
    #license = lib.licenses.BSD;
  };
}
