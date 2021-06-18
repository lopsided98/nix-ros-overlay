
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-description";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3_description/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "2c64e3fa5c70f7fe3448db292e67b26cbe2ab1f5e30d50a4e4314049cd1bc942";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
