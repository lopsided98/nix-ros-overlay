
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-gripper-action-controller";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/gripper_action_controller/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "4b06301c7c7dd97b2b4fc839b7892c41126dd3fc5164cd3377f632677a1fc7a8";
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
