
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-asmach";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/asmach/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "9febdc4cd575ac259dc0cccef0df7d2aee3bc0106f4b206752abc9667115cbbf";
  };

  buildType = "catkin";
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
