
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agvs-description, agvs-pad, catkin }:
buildRosPackage {
  pname = "ros-kinetic-agvs-common";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/agvs_common-release/archive/release/kinetic/agvs_common/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a6795f00e9eff8bc229652835a6ba12b715897225ecb13b80efa755148949a25";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ agvs-description agvs-pad ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the Agvs and Agvs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
