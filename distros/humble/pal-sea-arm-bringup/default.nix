
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, joy, joy-teleop, launch-pal, pal-sea-arm-controller-configuration, pal-sea-arm-description, play-motion2, play-motion2-cli, play-motion2-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-bringup";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_bringup/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "03b1f5bd78dcc8fecd40445f438fe96211d2f0484e330700dc3e88f81139df6e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-broadcaster joint-trajectory-controller joy joy-teleop launch-pal pal-sea-arm-controller-configuration pal-sea-arm-description play-motion2 play-motion2-cli play-motion2-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
