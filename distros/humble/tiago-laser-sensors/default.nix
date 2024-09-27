
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-tiago-laser-sensors";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_laser_sensors/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "4bbabaadbae272584423e395fa28518e65a70fa31c438b8d66364e9baa3ffcb1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
