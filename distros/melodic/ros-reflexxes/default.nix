
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libreflexxestype2, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ros-reflexxes";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/ros_reflexxes/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "76626c036fcf97fd86efb214887ddffe715d343b660a6117eddd0f833ef11fda";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ libreflexxestype2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_reflexxes package'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
