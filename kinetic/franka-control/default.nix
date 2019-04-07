
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, franka-gripper, franka-description, tf2-msgs, actionlib-msgs, actionlib, tf, geometry-msgs, realtime-tools, message-generation, message-runtime, robot-state-publisher, franka-hw, joint-state-publisher, catkin, controller-interface, franka-msgs, roscpp, controller-manager, pluginlib, sensor-msgs, libfranka }:
buildRosPackage {
  pname = "ros-kinetic-franka-control";
  version = "0.6.0-r1";

  src = fetchurl {
    url = https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_control/0.6.0-1.tar.gz;
    sha256 = "1eb6aa78aff3ad5c5f617462d21be812931fe5d2bfecc774d8dc0550596d7b8e";
  };

  buildInputs = [ controller-manager tf2-msgs pluginlib actionlib-msgs realtime-tools sensor-msgs roscpp message-generation controller-interface franka-msgs actionlib libfranka franka-hw tf geometry-msgs ];
  propagatedBuildInputs = [ franka-description tf2-msgs franka-gripper actionlib-msgs controller-interface franka-msgs actionlib roscpp tf geometry-msgs controller-manager pluginlib realtime-tools sensor-msgs message-runtime robot-state-publisher libfranka franka-hw joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    #license = lib.licenses.Apache 2.0;
  };
}
