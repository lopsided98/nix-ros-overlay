
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, franka-description, moveit-ros-move-group, moveit-ros-visualization, moveit-kinematics, catkin, robot-state-publisher, topic-tools, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-panda-moveit-config";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/panda_moveit_config-release/archive/release/melodic/panda_moveit_config/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "fc91b60881da960606742288b6b3b53aae0b3abe98246d1e1f8c9d1b56126f51";
  };

  buildType = "catkin";
  buildInputs = [ franka-description ];
  propagatedBuildInputs = [ moveit-fake-controller-manager franka-description moveit-ros-move-group moveit-ros-visualization moveit-kinematics robot-state-publisher topic-tools joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the panda with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
