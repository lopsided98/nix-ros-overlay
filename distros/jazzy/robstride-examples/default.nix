
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, controller-manager, forward-command-controller, joint-state-broadcaster, launch, launch-ros, robot-state-publisher, robstride-ros2-control, ros2-socketcan, xacro }:
buildRosPackage {
  pname = "ros-jazzy-robstride-examples";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/jazzy/robstride_examples/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "a79e54b4fc2473d389f7b7f061a140dfc93852522ff0d4de08428e2b9066730d";
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
