
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpio-controller, mimic-joint-controller, rm-calibration-controllers, rm-chassis-controllers, rm-gimbal-controllers, rm-orientation-controller, rm-shooter-controllers, robot-state-controller, tof-radar-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "1db9b0f50de7c96d11a94f9e5b836d7fa4b0ca00b96c4b26d5237f53058f4f4e";
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
