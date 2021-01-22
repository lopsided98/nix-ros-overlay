
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libmodbus, libreflexxestype2, ros-reflexxes }:
buildRosPackage {
  pname = "ros-kinetic-ipr-extern";
  version = "0.8.8";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/kinetic/ipr_extern/0.8.8-0.tar.gz";
    name = "0.8.8-0.tar.gz";
    sha256 = "d7e37fb86212a48bfdfba21e29cca5541aaf7e1e950e4415fbf1a08191079b6a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libmodbus libreflexxestype2 ros-reflexxes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with external libraries used in Industrial and Service workspaces. Currentlly supported Libraries: Reflexxes, Libmodbus.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
