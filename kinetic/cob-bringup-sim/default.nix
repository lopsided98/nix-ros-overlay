
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roslaunch, cob-default-robot-config, geometry-msgs, catkin, pythonPackages, cob-default-env-config, roslib, rospy, cob-supported-robots, cob-gazebo-worlds, tf, cob-gazebo, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup-sim";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_bringup_sim/0.6.10-0.tar.gz;
    sha256 = "0250d46428fe1aaba1de136ce73dea93618b028e62dd745236027107c55aa0b2";
  };

  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots cob-default-env-config ];
  propagatedBuildInputs = [ gazebo-ros roslaunch pythonPackages.numpy cob-default-robot-config geometry-msgs tf cob-default-env-config rospy cob-gazebo-worlds roslib cob-gazebo gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for starting a simulated Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
