
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-base, turtlebot4-bringup, turtlebot4-diagnostics, turtlebot4-tests }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-robot";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/turtlebot4_robot/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a029870b6f9ec14a7d42049cfd87a085b1af83308a5d6a8c5212f60059d10e74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-base turtlebot4-bringup turtlebot4-diagnostics turtlebot4-tests ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Robot Metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
