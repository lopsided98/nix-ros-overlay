
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, combined-robot-hw, controller-interface, franka-description, franka-msgs, gtest, hardware-interface, joint-limits-interface, libfranka, message-generation, pluginlib, roscpp, rostest, std-srvs, urdf }:
buildRosPackage {
  pname = "ros-melodic-franka-hw";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_hw/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "2b4c0859a4b05db0ff31bce1ccbb3de5c2735304ad65e3c99595ae4e3d31453d";
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
