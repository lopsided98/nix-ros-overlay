
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-description";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_description/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "4f06992eb77a255e0e13723ad0f129eaa7a4ecab19e76fcde4c1b91a652cb8bc";
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
