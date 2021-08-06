
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, combined-robot-hw, controller-interface, franka-description, franka-msgs, gtest, hardware-interface, joint-limits-interface, libfranka, message-generation, pluginlib, roscpp, rostest, std-srvs, urdf }:
buildRosPackage {
  pname = "ros-noetic-franka-hw";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_hw/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "c77a11f6abe0f5e1af075e96cce20b81519fa0f177936cb3ae26e4b62f12bbd2";
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
