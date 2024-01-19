
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-gripper-action-controller";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/gripper_action_controller/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "9a2c4adbf4cba789cc6e40f97d47db2173b0d90e1cf8c51e1867d3ef4f644c20";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-interface hardware-interface realtime-tools roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
