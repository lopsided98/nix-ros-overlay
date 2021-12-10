
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, kdl-parser, pluginlib, realtime-tools, rm-common, roscpp, roslint, tf2-kdl, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-robot-state-controller";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/robot_state_controller/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "141f326c9938e86964006050b4cf53b83e4377899a3851fb797ad105a160d9c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface kdl-parser pluginlib realtime-tools rm-common roscpp roslint tf2-kdl tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
