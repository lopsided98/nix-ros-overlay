
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpio-controller, mimic-joint-controller, rm-calibration-controllers, rm-chassis-controllers, rm-gimbal-controllers, rm-orientation-controller, rm-shooter-controllers, robot-state-controller, tof-sensor-controller }:
buildRosPackage {
  pname = "ros-noetic-rm-controllers";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_controllers/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "88b28ad85a307d3e429e5fda647ff71fd7df08abdc7c91fb65559db822629e68";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gpio-controller mimic-joint-controller rm-calibration-controllers rm-chassis-controllers rm-gimbal-controllers rm-orientation-controller rm-shooter-controllers robot-state-controller tof-sensor-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package for RoboMaster.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
