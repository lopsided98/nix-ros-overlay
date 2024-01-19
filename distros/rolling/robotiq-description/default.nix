
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-robotiq-description";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/rolling/robotiq_description/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "390f1c1f44d7c495e772cf3023bcff63e43ab0306a4b12bb66c98977609a0074";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF and xacro description package for the Robotiq gripper.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
