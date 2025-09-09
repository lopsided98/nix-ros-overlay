
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-kilted-robotiq-description";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_robotiq_gripper-release/archive/release/kilted/robotiq_description/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "499b11d6771d508cad63ff5f23c9a4131dca14c3286e45c0377d013ad78c519c";
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
