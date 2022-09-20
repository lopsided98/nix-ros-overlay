
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpio-controller, mimic-joint-controller, rm-calibration-controllers, rm-chassis-controllers, rm-gimbal-controllers, rm-orientation-controller, rm-shooter-controllers, robot-state-controller, tof-radar-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "5420592e36da035bd098aa8dd286ee9410602e52cdaf2be6d877d56f384bdd65";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gpio-controller mimic-joint-controller rm-calibration-controllers rm-chassis-controllers rm-gimbal-controllers rm-orientation-controller rm-shooter-controllers robot-state-controller tof-radar-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
