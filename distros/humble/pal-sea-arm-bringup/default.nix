
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, joy, joy-teleop, launch-pal, pal-sea-arm-controller-configuration, pal-sea-arm-description, play-motion2, play-motion2-cli, play-motion2-msgs }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-bringup";
  version = "2.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_bringup/2.8.4-1.tar.gz";
    name = "2.8.4-1.tar.gz";
    sha256 = "80352a56cd3b2132593d8950fd53b27db5ce6f83e433cb75cf3762fc1f5c761e";
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
