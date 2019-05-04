
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, urdf, robot-state-publisher, roslaunch, roslib, xacro }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca-description";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca_description/1.0.1-0.tar.gz;
    sha256 = "13db1894cd0b3fdd3668ecb300e42fb50b6a6f7c52ec404dfb55a7a827bb4739";
  };

  checkInputs = [ roslaunch roslib rviz ];
  propagatedBuildInputs = [ roslaunch urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Chrysler Pacifica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
