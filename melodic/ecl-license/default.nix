
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ecl-license";
  version = "0.61.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/melodic/ecl_license/0.61.7-0.tar.gz;
    sha256 = "ed382fc26835b422b7315c1162c6fcf591b8243be2822b44eaf9a55ffc6529e0";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    #license = lib.licenses.BSD;
  };
}
