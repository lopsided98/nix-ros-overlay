
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a73af4e4204b17aea33f8687006a3b153f1affc078d027e4442bf538a953bf22";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
