
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-gripper-action-controller";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/gripper_action_controller/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "8a308353861c5fa7b1cf374b0d88eca845621cf3bf430229e649732f8e13de21";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib ];
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-interface hardware-interface realtime-tools roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
