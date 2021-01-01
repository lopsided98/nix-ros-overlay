
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, combined-robot-hw, controller-interface, franka-description, franka-msgs, gtest, hardware-interface, joint-limits-interface, libfranka, message-generation, pluginlib, roscpp, rostest, urdf }:
buildRosPackage {
  pname = "ros-melodic-franka-hw";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_hw/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "9d5e7b500096de8c99d98d528c46e570fc8a48dee4913a703e8a7f8d8c7f64ce";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ franka-description gtest rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs combined-robot-hw controller-interface franka-msgs hardware-interface joint-limits-interface libfranka pluginlib roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_hw provides hardware interfaces for using Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
