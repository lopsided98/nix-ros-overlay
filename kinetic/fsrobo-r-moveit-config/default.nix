
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-visualization, moveit-ros-move-group, catkin, moveit-kinematics, fsrobo-r-description, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-moveit-config";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_moveit_config/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "3eb07feb50fd8d9af7cc90b0b1e9eb73329d68603d51b91ba0ce1e8a809cf622";
  };

  buildType = "catkin";
  buildInputs = [ fsrobo-r-description ];
  propagatedBuildInputs = [ moveit-ros-move-group moveit-ros-visualization moveit-kinematics fsrobo-r-description robot-state-publisher joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fsrobo_r with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
