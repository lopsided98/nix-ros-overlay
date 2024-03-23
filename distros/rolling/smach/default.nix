
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python }:
buildRosPackage {
  pname = "ros-rolling-smach";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/rolling/smach/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "77e861116bf19c76961445b309ad08a52b7265a4d18c8b5f6a74e402ff874acb";
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
