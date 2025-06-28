
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-description";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_description/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "5b616c8dbc232deaa1a8722cbb84121327adfd0fb86fbd8681b4491e80151543";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D models of the TurtleBot3 for simulation and visualization";
    license = with lib.licenses; [ asl20 ];
  };
}
