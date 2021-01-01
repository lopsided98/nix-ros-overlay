
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, controller-interface, controller-manager, franka-description, franka-gripper, franka-hw, franka-msgs, geometry-msgs, joint-state-publisher, libfranka, message-generation, message-runtime, pluginlib, realtime-tools, robot-state-publisher, roscpp, sensor-msgs, tf, tf2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-franka-control";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_control/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "1eb6aa78aff3ad5c5f617462d21be812931fe5d2bfecc774d8dc0550596d7b8e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs controller-interface controller-manager franka-description franka-gripper franka-hw franka-msgs geometry-msgs joint-state-publisher libfranka message-runtime pluginlib realtime-tools robot-state-publisher roscpp sensor-msgs tf tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
