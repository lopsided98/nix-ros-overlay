
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-gripper-action-controller";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/gripper_action_controller/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "7fa4dfa383f738067f6b9b04b5092bb6ed2ffcad9e03461fd71f75332c2cc6eb";
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
