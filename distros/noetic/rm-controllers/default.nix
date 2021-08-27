
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3af46e86f087d38dbf5bffa07f8238d879e28cb19c1770418a55ce63dffafa27";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
