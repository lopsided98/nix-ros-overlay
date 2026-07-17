
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, dynamixel-hardware-interface, husarion-components-description, joint-state-publisher, launch, launch-ros, open-manipulator-description, python3Packages, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-description";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_description/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "da510b311b35515b34c029797c4e4b8022323da785e76f27d0ea6057dd8e7c27";
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
