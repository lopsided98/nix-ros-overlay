
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joy-teleop, launch-pal, play-motion2, robot-state-publisher, tiago-controller-configuration, tiago-description, twist-mux }:
buildRosPackage {
  pname = "ros-humble-tiago-bringup";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_bringup/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "c176ae9b832f96fe742cf9b00a95e7d1b95ea9da45cace96fb643783e2018ea0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joy-teleop launch-pal play-motion2 robot-state-publisher tiago-controller-configuration tiago-description twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files to upload the robot description and start the controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
