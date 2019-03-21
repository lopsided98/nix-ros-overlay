
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, roscpp, libreflexxestype2 }:
buildRosPackage {
  pname = "ros-melodic-ros-reflexxes";
  version = "0.8.8-r1";

  src = fetchurl {
    url = https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/ros_reflexxes/0.8.8-1.tar.gz;
    sha256 = "76626c036fcf97fd86efb214887ddffe715d343b660a6117eddd0f833ef11fda";
  };

  propagatedBuildInputs = [ roscpp libreflexxestype2 ];
  nativeBuildInputs = [ catkin roscpp cmake-modules libreflexxestype2 ];

  meta = {
    description = ''The ros_reflexxes package'';
    #license = lib.licenses.LGPLv3;
  };
}
