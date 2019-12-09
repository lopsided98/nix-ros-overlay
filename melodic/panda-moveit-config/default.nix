
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-ros-move-group, catkin, franka-description, moveit-ros-visualization, moveit-kinematics, topic-tools, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-panda-moveit-config";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/panda_moveit_config-release/archive/release/melodic/panda_moveit_config/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "fcb1f85bae56c987e03aee154f6accfac69a01e036d7ab9771fffbf024c595bc";
  };

  buildType = "catkin";
  buildInputs = [ franka-description ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-ros-move-group franka-description moveit-ros-visualization moveit-kinematics topic-tools moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the panda with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
