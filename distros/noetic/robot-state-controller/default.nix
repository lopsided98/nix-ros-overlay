
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, kdl-parser, pluginlib, realtime-tools, rm-common, roscpp, roslint, tf2-kdl, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-robot-state-controller";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/robot_state_controller/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "5cc6b5ff5c0ad898e994c691a3272714087f3fce9d503edd38af77fb5227b757";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface kdl-parser pluginlib realtime-tools rm-common roscpp roslint tf2-kdl tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
