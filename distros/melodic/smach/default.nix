
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-smach";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/melodic/smach/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "37de5727c98e7aa222670ad40229cfe239e2907f25ec0d7133b4ec2c29eb6c7c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
