
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-description";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_description/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "ea6a31a23c6d39a84a0fa7da6b7c804a170f4d1ddfec567d3c058e71d93d314b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
