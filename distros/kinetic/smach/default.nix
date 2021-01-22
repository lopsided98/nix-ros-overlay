
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-smach";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/kinetic/smach/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "98763352defe3ffd8acb6866467a435578bb2510ca56f67b98e4c66b3d1143fb";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SMACH is a task-level architecture for rapidly creating complex robot
    behavior. At its core, SMACH is a ROS-independent Python library to build
    hierarchical state machines. SMACH is a new library that takes advantage of
    very old concepts in order to quickly create robust robot behavior with
    maintainable and modular code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
