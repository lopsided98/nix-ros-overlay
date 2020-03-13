
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libmodbus, libreflexxestype2, ros-reflexxes }:
buildRosPackage {
  pname = "ros-melodic-ipr-extern";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/melodic/ipr_extern/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "e3884879277729178b8a6de7ff1de7916eaec4f6489a1adbad72568bce0de1fb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libmodbus libreflexxestype2 ros-reflexxes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with external libraries used in Industrial and Service workspaces. Currentlly supported Libraries: Reflexxes, Libmodbus.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
