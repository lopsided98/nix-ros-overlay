
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, urdf, robot-state-publisher, catkin, rviz }:
buildRosPackage {
  pname = "ros-kinetic-ur-e-description";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_e_description/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "04e70a7d5c912ff537f62fc16fcfb045e9ec584429fa11da8285c49176e88a7e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher xacro urdf robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Universal UR5/10 robot arms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
