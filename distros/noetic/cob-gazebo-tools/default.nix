
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, python3Packages, roslib, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-tools";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_tools/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "6f1d3cb85549ac63c32a6c1915e5308323fd18f740b990ba42dc2fcdb01c7731";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs python3Packages.numpy roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_gazebo_tools package provides helper tools for the gazebo simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
