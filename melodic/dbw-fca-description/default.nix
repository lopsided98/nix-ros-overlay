
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, urdf, robot-state-publisher, roslaunch, roslib, xacro }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-description";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_description/1.0.6-1.tar.gz;
    sha256 = "9ceafbf5bdce281b0423fdb9a4c50810fd443490315897c8f789cc0be28c86ee";
  };

  checkInputs = [ roslaunch roslib rviz ];
  propagatedBuildInputs = [ roslaunch urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Chrysler Pacifica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
