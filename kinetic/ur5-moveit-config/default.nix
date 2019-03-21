
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, ur-description, catkin, moveit-simple-controller-manager, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-ur5-moveit-config";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur5_moveit_config/1.2.1-0.tar.gz;
    sha256 = "8ca354b939f9d4e10c898b385ab2d3e78cca870545cbeda1b219be4bbb052798";
  };

  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization ur-description moveit-simple-controller-manager robot-state-publisher joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ur-description ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the ur5 with the MoveIt Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
