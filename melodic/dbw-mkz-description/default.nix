
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, robot-state-publisher, catkin, roslib, rviz, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-description";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_description/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "342433ddcb9d4f194348334c952eb39a39f0d6d6290ed9c8e8ef97665860b095";
  };

  buildType = "catkin";
  checkInputs = [ rviz roslaunch roslib ];
  propagatedBuildInputs = [ robot-state-publisher xacro roslaunch urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Lincoln MKZ.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
