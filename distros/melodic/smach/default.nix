
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-smach";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/melodic/smach/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "432350b9408615075e0f13acdd5cbd80dd18b35deebdf8fdb45a04d8cb0f6994";
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
