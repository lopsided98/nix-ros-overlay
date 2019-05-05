
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, python, moveit-resources, moveit-ros-move-group, rosconsole, catkin, pythonPackages, moveit-ros-manipulation, roscpp, rostest, moveit-ros-warehouse, actionlib, rospy, tf-conversions, eigen-conversions, tf, eigen }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-planning-interface";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_planning_interface/0.9.12-1.tar.gz;
    sha256 = "51725c8f5a29ac3870cc758c6784112cecd6466ffe62771657eb27dae354983b";
  };

  buildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole moveit-ros-manipulation roscpp moveit-ros-warehouse tf-conversions actionlib rospy eigen-conversions tf eigen ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole moveit-ros-manipulation roscpp moveit-ros-warehouse tf-conversions actionlib rospy eigen-conversions tf ];
  nativeBuildInputs = [ pythonPackages.catkin-pkg catkin ];

  meta = {
    description = ''Components of MoveIt that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
