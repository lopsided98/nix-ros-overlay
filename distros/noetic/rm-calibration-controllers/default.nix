
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, effort-controllers, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-calibration-controllers";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_calibration_controllers/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "5385f5e78f42855c490adf9d0fb9e34f50a6ba91a6bee48814cc622b1f5d702e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-interface effort-controllers hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
