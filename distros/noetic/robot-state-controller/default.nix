
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, kdl-parser, pluginlib, realtime-tools, rm-common, roscpp, roslint, tf2-kdl, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-robot-state-controller";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/robot_state_controller/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "bbe3ed5c9b5aa781c1f9e96cdd184a9358c0fac23a0da3807729922431b42743";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface kdl-parser pluginlib realtime-tools rm-common roscpp roslint tf2-kdl tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
