
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, barrett-hand-control, barrett-hand-gazebo, catkin }:
buildRosPackage {
  pname = "ros-kinetic-barrett-hand-sim";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/barrett_hand_sim-release/archive/release/kinetic/barrett_hand_sim/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "c955a3d5382edb3a2ca2d1c154a9514475b8b372399e58b11c8c452e25d19313";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ barrett-hand-control barrett-hand-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The barrett_hand_sim package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
