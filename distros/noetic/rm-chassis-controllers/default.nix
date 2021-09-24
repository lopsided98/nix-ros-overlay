
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-interface, effort-controllers, forward-command-controller, hardware-interface, imu-sensor-controller, pluginlib, realtime-tools, rm-common, rm-msgs, robot-localization, roscpp, roslint, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-chassis-controllers";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_chassis_controllers/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "50d4c3c45a996841a88993c09b2930abb9ecb4835e5700c6de3a15285bbfda16";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-toolbox controller-interface effort-controllers forward-command-controller hardware-interface imu-sensor-controller pluginlib realtime-tools rm-common rm-msgs robot-localization roscpp roslint tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Chassis controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
