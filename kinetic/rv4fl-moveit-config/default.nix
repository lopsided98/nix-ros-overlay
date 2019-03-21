
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, melfa-description, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, moveit-kinematics, catkin, moveit-setup-assistant, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-rv4fl-moveit-config";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/rv4fl_moveit_config/0.0.4-0.tar.gz;
    sha256 = "f50897d6063dadd9f15a145ea6bbdaa392916c6042a7a98c88317b92898fc6f1";
  };

  propagatedBuildInputs = [ melfa-description moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics moveit-planners-ompl robot-state-publisher joint-state-publisher xacro moveit-setup-assistant ];
  nativeBuildInputs = [ melfa-description catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the rv4fl with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
