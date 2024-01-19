
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, joint-state-broadcaster, ros2-controllers, ros2launch, rsl }:
buildRosPackage {
  pname = "ros-humble-irobot-create-control";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_control/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "047f9f7461d71e717eb1f674bf241e42b020ec7a9c761d63fa8c9748b664c3f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joint-state-broadcaster ros2-controllers ros2launch rsl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides the diff-drive controller for the iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
