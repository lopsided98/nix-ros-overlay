
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libmodbus, libreflexxestype2, ros-reflexxes }:
buildRosPackage {
  pname = "ros-kinetic-ipr-extern";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/kinetic/ipr_extern/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "d9a11c9df9a4577801f4d3e061b54ed192f349e4b72663dc9db2fca4f3dba67c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libmodbus libreflexxestype2 ros-reflexxes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with external libraries used in Industrial and Service workspaces. Currentlly supported Libraries: Reflexxes, Libmodbus.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
