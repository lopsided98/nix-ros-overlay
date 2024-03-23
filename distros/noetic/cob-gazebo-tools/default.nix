
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, python3Packages, roslib, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-tools";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_tools/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "aa501cdeceab9188318532e4c90176934ecc5b1de078628e22da510b7c5c333a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs python3Packages.numpy roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_gazebo_tools package provides helper tools for the gazebo simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
