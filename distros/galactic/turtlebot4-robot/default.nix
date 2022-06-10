
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-base, turtlebot4-bringup, turtlebot4-diagnostics, turtlebot4-tests }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-robot";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/turtlebot4_robot/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "321c69e95d86afe9dd7b3157f1f1be57e5c835a7dc6ed473385c503967caa9cb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ turtlebot4-base turtlebot4-bringup turtlebot4-diagnostics turtlebot4-tests ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Robot Metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
