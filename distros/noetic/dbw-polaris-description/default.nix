
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, roslib, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-description";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_description/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "e2649e6d7827fd9453cf95b4f4786a6619199659d88d09fddb4dfb82c25309b5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslib rviz ];
  propagatedBuildInputs = [ robot-state-publisher roslaunch urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Polaris vehicles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
