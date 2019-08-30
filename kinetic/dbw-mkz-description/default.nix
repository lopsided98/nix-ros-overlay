
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, urdf, robot-state-publisher, roslaunch, roslib, xacro }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-description";
  version = "1.2.3-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_description/1.2.3-1.tar.gz;
    sha256 = "cd0f675c467b304c7371668de296aa3b05821d5875989ecdd175bd04bb3649b5";
  };

  checkInputs = [ roslaunch roslib rviz ];
  propagatedBuildInputs = [ roslaunch urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Lincoln MKZ.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
