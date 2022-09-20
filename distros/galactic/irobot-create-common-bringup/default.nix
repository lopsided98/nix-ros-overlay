
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, irobot-create-control, irobot-create-description, joint-state-publisher, robot-state-publisher, ros2launch, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-common-bringup";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_common_bringup/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "47e3739e655fce791271407bbe0ca3c32a8ecde4ff2fd81bd6198e44af95ce8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ irobot-create-control irobot-create-description joint-state-publisher robot-state-publisher ros2launch rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides common launch and configuration scripts for a simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
