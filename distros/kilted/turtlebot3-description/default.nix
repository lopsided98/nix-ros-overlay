
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-description";
  version = "2.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/kilted/turtlebot3_description/2.3.6-1.tar.gz";
    name = "2.3.6-1.tar.gz";
    sha256 = "cb7f315467eb5b67a1a1a456639e7a02690c76ddddf6bf436a9010cc2894b9bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D models of the TurtleBot3 for simulation and visualization";
    license = with lib.licenses; [ asl20 ];
  };
}
