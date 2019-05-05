
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, urdf, robot-state-publisher, roslaunch, roslib, xacro }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-description";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_description/1.1.1-0.tar.gz;
    sha256 = "4a4a3e557b1eab9781065fa06b4283e97ab6d25d44f0d9696c9720418ae8b0e5";
  };

  checkInputs = [ roslaunch roslib rviz ];
  propagatedBuildInputs = [ roslaunch urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Lincoln MKZ.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
