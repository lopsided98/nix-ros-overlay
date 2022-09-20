
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-description";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_description/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "ea95db46d10146b4d3725ea1b08fe5ce49eb298fc76bfce097047ac93e0267f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
