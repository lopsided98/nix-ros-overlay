
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, controller-interface, forward-command-controller, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-orientation-controller";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_orientation_controller/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "c5bdefd94013ce7d7c5d8c90f7af5b47d61a842961e6ed0bf080007906c059c1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles controller-interface forward-command-controller hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot orientation controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
