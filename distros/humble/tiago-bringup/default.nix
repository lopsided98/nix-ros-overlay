
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joy-teleop, launch-pal, play-motion2, robot-state-publisher, tiago-controller-configuration, tiago-description, twist-mux }:
buildRosPackage {
  pname = "ros-humble-tiago-bringup";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_bringup/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "72cdf5c7b9746d73332cd0efc79e651ace2816397c4745e4de4d8e78eb6aa351";
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
