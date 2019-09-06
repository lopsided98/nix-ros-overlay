
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, ament-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-turtlebot3-description";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_description/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "3f561bba775ec4993d7d6be216d9bcd755f9252c7ebdd2894561edffe5036f0c";
  };

  buildType = "ament_cmake";
  buildInputs = [ urdf ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
