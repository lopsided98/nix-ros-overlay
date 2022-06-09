
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-calibration-controllers, rm-chassis-controllers, rm-gimbal-controllers, rm-orientation-controller, rm-shooter-controllers, robot-state-controller, tof-sensor-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "88c6a49a51cba27838ef00d2a5f5623fc4a3efcfd7473eb6cb34bec0d8edf04b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-calibration-controllers rm-chassis-controllers rm-gimbal-controllers rm-orientation-controller rm-shooter-controllers robot-state-controller tof-sensor-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
