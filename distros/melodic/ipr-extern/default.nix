
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libmodbus, libreflexxestype2, ros-reflexxes }:
buildRosPackage {
  pname = "ros-melodic-ipr-extern";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/ipr_extern/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "a117475704fac421bb5f283eb775ab4339944f6ea148c2c996c0fb7642bb0fe8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libmodbus libreflexxestype2 ros-reflexxes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with external libraries used in Industrial and Service workspaces. Currentlly supported Libraries: Reflexxes, Libmodbus.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
