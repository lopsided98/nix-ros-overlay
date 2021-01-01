
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-loki-base-node";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/loki_base_node-release/archive/release/kinetic/loki_base_node/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "3a52534217926fe09476948959b9abaf8b5251e0a37f99bbbb5b2dae96c09b8f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''loki_base_node has a ROS node to communicate with the Loki robot base and allow communication with the motors and sonars'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
