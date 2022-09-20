
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fsrobo-r-description, joint-state-publisher, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-moveit-config";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/melodic/fsrobo_r_moveit_config/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "da7d237127402bc919fd00bc29f585a6d294143d95206c000326ebb3ef4e0a65";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fsrobo-r-description joint-state-publisher moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fsrobo_r with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
