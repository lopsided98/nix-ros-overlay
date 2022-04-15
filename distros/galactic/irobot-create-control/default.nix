
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gazebo-ros2-control, ign-ros2-control, irobot-create-nodes, joint-state-broadcaster, ros2-controllers, ros2launch }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-control";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_control/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ee286c9cb22bfc3ad9aa2f77fc923b8a9709fc7ce1f2c00e600eda433dc735af";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gazebo-ros2-control ign-ros2-control irobot-create-nodes joint-state-broadcaster ros2-controllers ros2launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides the diff-drive controller for the iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
