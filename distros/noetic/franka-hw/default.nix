
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, combined-robot-hw, controller-interface, franka-description, franka-msgs, gtest, hardware-interface, joint-limits-interface, libfranka, message-generation, pluginlib, roscpp, rostest, std-srvs, urdf }:
buildRosPackage {
  pname = "ros-noetic-franka-hw";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_hw/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "5cbbc021cc60a020412910083ff3c5f719916b2118c59a3864b29ca6788cb309";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ franka-description gtest rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs combined-robot-hw controller-interface franka-msgs hardware-interface joint-limits-interface libfranka pluginlib roscpp std-srvs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_hw provides hardware interfaces for using Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
