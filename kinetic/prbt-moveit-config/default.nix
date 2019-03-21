
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-visualization, moveit-ros-move-group, prbt-support, xacro, moveit-kinematics, catkin, joint-trajectory-controller, moveit-simple-controller-manager, rviz, robot-state-publisher, roslaunch, joint-state-publisher, prbt-ikfast-manipulator-plugin, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-prbt-moveit-config";
  version = "0.4.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_moveit_config/0.4.7-0.tar.gz;
    sha256 = "b0910848ba8a19e7c136b8f6b9391e2e2f566be7b106139d4733d62650338bff";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group prbt-support moveit-ros-visualization xacro moveit-kinematics joint-trajectory-controller moveit-simple-controller-manager rviz robot-state-publisher joint-state-publisher prbt-ikfast-manipulator-plugin moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.Apache 2.0;
  };
}
