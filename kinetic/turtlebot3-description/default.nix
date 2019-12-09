
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-description";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_description/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "673598e3b7793b42fb31210bc594f6d2518310ed581ddc22ae063138d5c47489";
  };

  buildType = "catkin";
  buildInputs = [ xacro urdf ];
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
