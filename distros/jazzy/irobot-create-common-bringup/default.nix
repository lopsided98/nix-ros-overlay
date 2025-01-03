
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, irobot-create-control, irobot-create-description, irobot-create-nodes, joint-state-publisher, robot-state-publisher, ros2launch, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-common-bringup";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_common_bringup/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "85bc66f063a54ab3638117fc34a62976c5ae10efe11a988b26de5356f2d7fa36";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ irobot-create-control irobot-create-description irobot-create-nodes joint-state-publisher robot-state-publisher ros2launch rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Provides common launch and configuration scripts for a simulated iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
