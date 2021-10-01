
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, roslib, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-description";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_description/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "4c7175c49a87299aa59caa561d605d5fa56b09560b4a70924ffb064ec42edc9c";
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
