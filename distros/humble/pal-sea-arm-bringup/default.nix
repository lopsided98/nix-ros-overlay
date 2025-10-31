
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, joy, joy-teleop, launch-pal, pal-sea-arm-controller-configuration, pal-sea-arm-description, play-motion2, play-motion2-cli }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-bringup";
  version = "1.20.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_bringup/1.20.1-1.tar.gz";
    name = "1.20.1-1.tar.gz";
    sha256 = "8d4175f83059cc786e62f3de0c0fa9daf641ade7240c785e560c50a2bb300481";
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
