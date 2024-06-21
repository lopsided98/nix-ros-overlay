
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-robotiq-description";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/jazzy/robotiq_description/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "9d95a1c13dfedad11ebc2ceb303f1ae2da56b80631ab74fd676c72a28c00c39a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and xacro description package for the Robotiq gripper.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
