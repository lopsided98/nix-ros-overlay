
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, python3Packages, roslib, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-tools";
  version = "0.7.5-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_tools/0.7.5-2.tar.gz";
    name = "0.7.5-2.tar.gz";
    sha256 = "8f429c820e04807d1437af5913bf6c681ee1fb7457c43fa9ed24906e51cb54a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs python3Packages.numpy roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_gazebo_tools package provides helper tools for the gazebo simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
