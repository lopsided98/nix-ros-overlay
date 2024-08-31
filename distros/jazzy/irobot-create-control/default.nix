
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, joint-state-broadcaster, ros2-controllers, ros2launch, rsl }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-control";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_control/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "65102419744ef2e56f0d71d4ab57507870559148d6dfafba2f4ded827aedbe58";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joint-state-broadcaster ros2-controllers ros2launch rsl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides the diff-drive controller for the iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
