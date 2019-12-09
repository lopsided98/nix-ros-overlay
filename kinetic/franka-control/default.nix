
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, controller-manager, pluginlib, franka-gripper, tf, franka-hw, actionlib-msgs, tf2-msgs, sensor-msgs, libfranka, robot-state-publisher, franka-msgs, joint-state-publisher, catkin, realtime-tools, roscpp, message-generation, controller-interface, actionlib, franka-description, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-franka-control";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_control/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "1eb6aa78aff3ad5c5f617462d21be812931fe5d2bfecc774d8dc0550596d7b8e";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs controller-interface controller-manager libfranka pluginlib actionlib tf franka-hw realtime-tools tf2-msgs actionlib-msgs franka-msgs roscpp message-generation ];
  propagatedBuildInputs = [ geometry-msgs controller-manager pluginlib franka-gripper tf franka-hw actionlib-msgs tf2-msgs sensor-msgs libfranka robot-state-publisher franka-msgs joint-state-publisher realtime-tools roscpp controller-interface actionlib franka-description message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_control provides a hardware node to control a Franka Emika research robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
