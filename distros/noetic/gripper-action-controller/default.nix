
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-gripper-action-controller";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/gripper_action_controller/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "464360c02f4455c524f8bdac2a2cc6bcad797b87f69d373e0a18884efa018a3b";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-interface hardware-interface realtime-tools roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The gripper_action_controller package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
