
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, joy, joy-teleop, launch-pal, pal-sea-arm-controller-configuration, pal-sea-arm-description, play-motion2, play-motion2-cli }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-bringup";
  version = "1.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_bringup/1.21.0-1.tar.gz";
    name = "1.21.0-1.tar.gz";
    sha256 = "7daf91cbd441222f58d8910501b9cc94162622e29242adced88b7d6191511d52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-broadcaster joint-trajectory-controller joy joy-teleop launch-pal pal-sea-arm-controller-configuration pal-sea-arm-description play-motion2 play-motion2-cli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
