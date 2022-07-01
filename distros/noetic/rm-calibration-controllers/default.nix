
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, effort-controllers, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-calibration-controllers";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_calibration_controllers/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "fd88731b495674968c92a0b97e9af484f2c00b715fe1b19f92bd613ce813bd85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-interface effort-controllers hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
