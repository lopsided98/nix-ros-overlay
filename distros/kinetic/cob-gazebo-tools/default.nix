
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, pythonPackages, roslib, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-tools";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_tools/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "9755f42ff6fcb2fa89c692dffa3db235831d174df73872ac7183f27f5fd04887";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs pythonPackages.numpy roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_gazebo_tools package provides helper tools for the gazebo simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
