
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, pythonPackages, roslib, catkin, gazebo-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-tools";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_tools/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "cc9ab9864b08db32eff343bc0ae39ad0a66d97c184cdc0ac603c089626f5dc65";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs tf roslib gazebo-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_gazebo_tools package provides helper tools for the gazebo simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
