
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-robotiq-description";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/rolling/robotiq_description/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "c3bca92bfa94e492c26cfc4dec663f25268595fa5f65cb6537d1b81602a94b94";
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
