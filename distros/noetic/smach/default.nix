
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-smach";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/noetic/smach/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "fb462b9cd8f88dd7e4d33b6bee0e19090a4c510ba6d0343039453196ef500cb2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "SMACH is a task-level architecture for rapidly creating complex robot
    behavior. At its core, SMACH is a ROS-independent Python library to build
    hierarchical state machines. SMACH is a new library that takes advantage of
    very old concepts in order to quickly create robust robot behavior with
    maintainable and modular code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
