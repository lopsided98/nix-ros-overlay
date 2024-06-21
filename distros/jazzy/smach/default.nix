
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python }:
buildRosPackage {
  pname = "ros-jazzy-smach";
  version = "3.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/jazzy/smach/3.0.3-3.tar.gz";
    name = "3.0.3-3.tar.gz";
    sha256 = "663e1c09c81f1604dc24f2c8965153d9420967e75cfe87199fbdf2d15bdcd746";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ament-cmake-python ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "SMACH is a task-level architecture for rapidly creating complex robot
    behavior. At its core, SMACH is a ROS-independent Python library to build
    hierarchical state machines. SMACH is a new library that takes advantage of
    very old concepts in order to quickly create robust robot behavior with
    maintainable and modular code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
