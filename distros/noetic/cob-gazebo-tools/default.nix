
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, python3Packages, roslib, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-tools";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_tools/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "2a56de346759adc40c7d1ad137b828e03fbc25ca877e7b6599bd6c2a21bd7e5d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs python3Packages.numpy roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_gazebo_tools package provides helper tools for the gazebo simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
