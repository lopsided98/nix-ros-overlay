
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, irobot-create-control, irobot-create-description, irobot-create-nodes, joint-state-publisher, robot-state-publisher, ros2launch, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-irobot-create-common-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_common_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7fff5e54c825eace136a6f89abd6173193d69c7aedfc08b96ebba82923a40040";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ irobot-create-control irobot-create-description irobot-create-nodes joint-state-publisher robot-state-publisher ros2launch rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides common launch and configuration scripts for a simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
