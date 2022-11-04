
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, controller-manager, effort-controllers, fetch-gazebo, gazebo-ros, gazebo-ros-control, robot-state-publisher, rospy }:
buildRosPackage {
  pname = "ros-melodic-fetchit-challenge";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetchit_challenge/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "603d36878e1a24437139fe6bc9542bbd19f197c3bea78c6c977b2231c7abb837";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs controller-manager effort-controllers fetch-gazebo gazebo-ros gazebo-ros-control robot-state-publisher rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetchit_challenge package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
