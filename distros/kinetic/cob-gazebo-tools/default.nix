
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, pythonPackages, roslib, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-tools";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_tools/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "2ec6b511ebf024353a77d2d3903411c83976e8ce5aa73d515b26eb22367cf083";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs pythonPackages.numpy roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_gazebo_tools package provides helper tools for the gazebo simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
