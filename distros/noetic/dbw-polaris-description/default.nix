
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, roslib, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-description";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_description/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "c1b0b09df9efc830ddbf4b139a6bcb496d11e156e6cf20b8186f88487192064e";
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
