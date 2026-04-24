
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, dynamixel-hardware-interface, husarion-components-description, joint-state-publisher, launch, launch-ros, open-manipulator-description, python3Packages, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e88bb2fd000b2029ada92c0d354d20f94b1417f089b1b3a8e43614baaf8f6d69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest xacro ];
  propagatedBuildInputs = [ dynamixel-hardware-interface husarion-components-description joint-state-publisher launch launch-ros open-manipulator-description robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rosbot_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
