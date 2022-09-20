
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-asmach";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/asmach/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "b7eeea554c6038f5c55ebb8a91973c24e8cdb3e20d71ceac5b7d6617b5316952";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SMACH, which stands for 'state machine', is a task-level
    architecture for rapidly creating complex robot behavior. At its
    core, SMACH is a ROS-independent Python library to build
    hierarchical state machines.  SMACH is a new library that takes
    advantage of very old concepts in order to quickly create robust
    robot behavior with maintainable and modular code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
