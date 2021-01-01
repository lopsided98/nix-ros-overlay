
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-barrett-hand-control";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/barrett_hand_sim-release/archive/release/kinetic/barrett_hand_control/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "bd38c3e79981551697d1a5688f3187e3b83afbc9531f8530acdff9e98e97ab7d";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The barrett_hand_control package is intended to control the gazebo simulation of the barrett hand'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
