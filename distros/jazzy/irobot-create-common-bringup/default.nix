
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, irobot-create-control, irobot-create-description, irobot-create-nodes, joint-state-publisher, robot-state-publisher, ros2launch, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-common-bringup";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_common_bringup/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "302373300b66c34d9e8ca01295a3272f5d972ea9d522e9c06d2576216d6a2ea9";
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
