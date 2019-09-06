
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, cob-default-robot-config, geometry-msgs, catkin, pythonPackages, cob-default-env-config, cob-supported-robots, cob-gazebo-worlds, roslib, rospy, cob-gazebo-objects, roslaunch, tf, cob-gazebo, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup-sim";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_bringup_sim/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "2dc6eda3e674880e7c8ade1029c4db331806301b179ee94dbc6b0d5eb68b0dfa";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots cob-default-env-config ];
  propagatedBuildInputs = [ gazebo-ros roslaunch cob-default-robot-config pythonPackages.numpy geometry-msgs tf cob-default-env-config rospy cob-gazebo-objects cob-gazebo-worlds roslib cob-gazebo gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for starting a simulated Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
