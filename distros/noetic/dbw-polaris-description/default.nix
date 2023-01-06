
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, roslib, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "341a41bd0252c37c6bd74a3e640499a9ca67e5dbbd03f572dec947bd564155b6";
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
