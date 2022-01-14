
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "3318a6d1d48e1490ca1fb5d7a2902198e381d3cb1767fb3dd31f3db42bd9405d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
