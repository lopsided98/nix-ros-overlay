
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-asmach";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/asmach/1.0.15-0.tar.gz;
    sha256 = "2cbe0026c3049a87ad441da973dc32f6f3b406a385184d7f51683d1b01168f43";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SMACH, which stands for 'state machine', is a task-level
    architecture for rapidly creating complex robot behavior. At its
    core, SMACH is a ROS-independent Python library to build
    hierarchical state machines.  SMACH is a new library that takes
    advantage of very old concepts in order to quickly create robust
    robot behavior with maintainable and modular code.'';
    #license = lib.licenses.BSD;
  };
}
