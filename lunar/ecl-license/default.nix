
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-ecl-license";
  version = "0.61.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/lunar/ecl_license/0.61.7-0.tar.gz;
    sha256 = "6eebca3d06322807025ca4e20c61960ce3eb1aa1e0786081eb5b568ce1e05347";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    #license = lib.licenses.BSD;
  };
}
