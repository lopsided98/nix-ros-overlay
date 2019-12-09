
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, robot-state-publisher, catkin, roslib, rviz, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca-description";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca_description/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "b14ced68b05aaca8520ed8ffc546e23725e677d21e661ba5ab842e92f49370ca";
  };

  buildType = "catkin";
  checkInputs = [ rviz roslaunch roslib ];
  propagatedBuildInputs = [ robot-state-publisher xacro roslaunch urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing the Chrysler Pacifica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
