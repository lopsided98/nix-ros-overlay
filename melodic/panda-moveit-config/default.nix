
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, franka-description, moveit-ros-move-group, moveit-ros-visualization, moveit-kinematics, catkin, robot-state-publisher, topic-tools, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-panda-moveit-config";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/panda_moveit_config-release/archive/release/melodic/panda_moveit_config/0.7.1-0.tar.gz;
    sha256 = "01274911d72afb49bda01ff79f7c15aec55668bc0d29342f70d3ea3be5faaa8a";
  };

  propagatedBuildInputs = [ moveit-fake-controller-manager franka-description moveit-ros-move-group moveit-ros-visualization moveit-kinematics robot-state-publisher topic-tools joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin franka-description ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the panda with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
