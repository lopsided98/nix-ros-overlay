
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, urdf, robot-state-publisher, roslaunch, roslib, xacro }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-description";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_description/1.1.1-0.tar.gz;
    sha256 = "149490f7189e497a9ff2fc32035eff5b378c4861ed5f9391fdec2a3aaaa8b645";
  };

  checkInputs = [ roslaunch roslib rviz ];
  propagatedBuildInputs = [ roslaunch urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Lincoln MKZ.'';
    #license = lib.licenses.BSD;
  };
}
