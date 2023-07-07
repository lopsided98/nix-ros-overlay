
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, joy, joy-teleop, launch-pal, play-motion2, robot-state-publisher, teleop-tools-msgs, tiago-controller-configuration, tiago-description, twist-mux }:
buildRosPackage {
  pname = "ros-humble-tiago-bringup";
  version = "4.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_bringup/4.0.12-1.tar.gz";
    name = "4.0.12-1.tar.gz";
    sha256 = "cfee8573e98c8bb81284cdeca27eb158a973fecd45e993227e51c0666d0ddb6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs joy joy-teleop launch-pal play-motion2 robot-state-publisher teleop-tools-msgs tiago-controller-configuration tiago-description twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files to upload the robot description and start the controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
