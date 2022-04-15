
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, effort-controllers, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-calibration-controllers";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_calibration_controllers/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "384e759ee250a8f4f6d6d8fada2486cdce215ae5e8865489d2ef07a8730aad4d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-interface effort-controllers hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
