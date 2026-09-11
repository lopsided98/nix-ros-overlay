
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, controller-manager, forward-command-controller, joint-state-broadcaster, launch, launch-ros, robot-state-publisher, robstride-ros2-control, ros2-socketcan, xacro }:
buildRosPackage {
  pname = "ros-humble-robstride-examples";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/humble/robstride_examples/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "cba3341f42614d9e6e93acb1489b33230882104bdbe52e6e0dd2042ddef1d052";
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
