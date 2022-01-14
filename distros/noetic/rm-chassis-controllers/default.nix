
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-interface, effort-controllers, forward-command-controller, hardware-interface, imu-sensor-controller, nav-msgs, pluginlib, realtime-tools, rm-common, rm-msgs, robot-localization, roscpp, roslint, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-chassis-controllers";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_chassis_controllers/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d94c8a2cd9048b30a08d74494769f6683376acffc6a7607b598c490691369f97";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-toolbox controller-interface effort-controllers forward-command-controller hardware-interface imu-sensor-controller nav-msgs pluginlib realtime-tools rm-common rm-msgs robot-localization roscpp roslint tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Chassis controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
