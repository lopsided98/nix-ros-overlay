
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-interface, effort-controllers, forward-command-controller, hardware-interface, imu-sensor-controller, nav-msgs, pluginlib, realtime-tools, rm-common, rm-msgs, robot-localization, roscpp, roslint, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-chassis-controllers";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_chassis_controllers/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "123787c1c1c9a52fbd1d48c934270a87bb17e23997130545af3b70116839864b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-toolbox controller-interface effort-controllers forward-command-controller hardware-interface imu-sensor-controller nav-msgs pluginlib realtime-tools rm-common rm-msgs robot-localization roscpp roslint tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Chassis controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
