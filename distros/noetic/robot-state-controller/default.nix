
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, kdl-parser, pluginlib, realtime-tools, rm-common, roscpp, roslint, tf2-kdl, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-robot-state-controller";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/robot_state_controller/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "0bc69ea2aeb3ed0b870613fe331adb3647150469405d53e1088774833d4c7015";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface kdl-parser pluginlib realtime-tools rm-common roscpp roslint tf2-kdl tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
