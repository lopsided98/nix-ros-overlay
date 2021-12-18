
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "05554d86404cc251e581c2c2563028d7bd8c92e44ba8ca199de962db555ff462";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
