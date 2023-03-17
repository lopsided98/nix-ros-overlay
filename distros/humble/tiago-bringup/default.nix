
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joy-teleop, launch-pal, play-motion2, robot-state-publisher, tiago-controller-configuration, tiago-description, twist-mux }:
buildRosPackage {
  pname = "ros-humble-tiago-bringup";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_bringup/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "0b88696dcc6fc308043096f29d4b55e64ab3a727da7bb80466393a991966a6b1";
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
