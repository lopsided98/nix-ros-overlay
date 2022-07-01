
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-interface, effort-controllers, forward-command-controller, hardware-interface, imu-sensor-controller, nav-msgs, pluginlib, realtime-tools, rm-common, rm-msgs, robot-localization, roscpp, roslint, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-chassis-controllers";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_chassis_controllers/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "51104a57ca6d339eeb3fba735592430ce710dab5f326a0c1b67128cb05ea68c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-toolbox controller-interface effort-controllers forward-command-controller hardware-interface imu-sensor-controller nav-msgs pluginlib realtime-tools rm-common rm-msgs robot-localization roscpp roslint tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Chassis controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
