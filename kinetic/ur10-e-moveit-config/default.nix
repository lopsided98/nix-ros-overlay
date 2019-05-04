
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, ur-description, catkin, moveit-simple-controller-manager, robot-state-publisher, roslaunch, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-ur10-e-moveit-config";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur10_e_moveit_config/1.2.5-0.tar.gz;
    sha256 = "26195fd9ef4ddde7ebe8e1b00e7291c31ae3328652ab96f7622f9c97164c2d8e";
  };

  buildInputs = [ ur-description ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization ur-description moveit-simple-controller-manager robot-state-publisher joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the ur10e with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
