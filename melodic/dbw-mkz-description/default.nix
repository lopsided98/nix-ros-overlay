
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, roslib, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-description";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_description/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "342433ddcb9d4f194348334c952eb39a39f0d6d6290ed9c8e8ef97665860b095";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslib rviz ];
  propagatedBuildInputs = [ robot-state-publisher roslaunch urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Lincoln MKZ.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
