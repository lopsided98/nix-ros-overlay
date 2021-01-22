
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-pkgs, robot-state-publisher, roscpp, rospy, rostest, rviz, tf }:
buildRosPackage {
  pname = "ros-kinetic-audibot-gazebo";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/kinetic/audibot_gazebo/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f1087cd057607bfd85cdb4bedf98abcfe96014cd989aba64dd1862a316aed183";
  };

  buildType = "catkin";
  checkInputs = [ rospy rostest ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs robot-state-publisher roscpp rviz tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo model plugin to simulate Audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
