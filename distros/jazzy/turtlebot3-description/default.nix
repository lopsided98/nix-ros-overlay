
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-description";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_description/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "39cccf5a70b1e1d16ccbd69ebb8b4f132d40ea8e6052d21bc5d0e8d123c14258";
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
