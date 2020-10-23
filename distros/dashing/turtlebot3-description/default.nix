
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-description";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_description/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "d29a730ae7bdfc78b91679ba6b4c0f8acd00787894fefd2445b8aa2b8eefa9d4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
