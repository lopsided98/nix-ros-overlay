
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, ur-description, catkin, moveit-simple-controller-manager, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-ur10-moveit-config";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur10_moveit_config/1.2.1-0.tar.gz;
    sha256 = "1c6751deff14700e5ba26da21a71a4083d43bd9ed6d80a7fe4be436a2c0247d3";
  };

  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization ur-description moveit-simple-controller-manager robot-state-publisher joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ur-description ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the ur10 with the MoveIt Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
