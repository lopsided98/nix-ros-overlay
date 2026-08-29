
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, controller-manager, forward-command-controller, joint-state-broadcaster, launch, launch-ros, robot-state-publisher, robstride-ros2-control, ros2-socketcan, xacro }:
buildRosPackage {
  pname = "ros-lyrical-robstride-examples";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/lyrical/robstride_examples/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "30b08cd741cf03bc49353bbe14602755a46e77b96e298743f2042c2bb8c3378d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-index-python controller-manager forward-command-controller joint-state-broadcaster launch launch-ros robot-state-publisher robstride-ros2-control ros2-socketcan xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ready-to-use Xacro profiles, ros2_control configuration, and launch examples for RobStride actuators.";
    license = with lib.licenses; [ mit ];
  };
}
