
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ecl-license";
  version = "0.61.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/noetic/ecl_license/0.61.8-1.tar.gz";
    name = "0.61.8-1.tar.gz";
    sha256 = "4e3a7c697758861f96edcbebec01a3c9bd24d04da7b045a01ca66e413977a478";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
