
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, python, moveit-ros-move-group, rosconsole, catkin, pythonPackages, moveit-ros-manipulation, roscpp, rostest, moveit-ros-warehouse, actionlib, rospy, tf-conversions, eigen-conversions, tf, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning-interface";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning_interface/0.9.15-0.tar.gz;
    sha256 = "897f5705e1b6cb9ba28f1647e47d80e398649cf1d85b54cfafe9ba47bafb99fb";
  };

  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole moveit-ros-manipulation roscpp moveit-ros-warehouse tf-conversions actionlib rospy eigen-conversions tf ];
  nativeBuildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole catkin moveit-ros-manipulation roscpp moveit-ros-warehouse tf-conversions pythonPackages.catkin-pkg actionlib rospy eigen-conversions tf eigen ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    #license = lib.licenses.BSD;
  };
}
