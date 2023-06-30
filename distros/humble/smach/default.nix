
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python }:
buildRosPackage {
  pname = "ros-humble-smach";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/humble/smach/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "e39a503e4a6643716010ac47539bf8a6af86172ff5e0ce6b3556c6903f064fe5";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ament-cmake-python ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''SMACH is a task-level architecture for rapidly creating complex robot
    behavior. At its core, SMACH is a ROS-independent Python library to build
    hierarchical state machines. SMACH is a new library that takes advantage of
    very old concepts in order to quickly create robust robot behavior with
    maintainable and modular code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
