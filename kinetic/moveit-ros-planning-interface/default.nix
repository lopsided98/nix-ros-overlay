
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosconsole, rospy, actionlib, eigenpy, tf-conversions, tf, pythonPackages, eigen-conversions, catkin, moveit-ros-manipulation, moveit-msgs, roscpp, python, moveit-resources, moveit-ros-move-group, rostest, moveit-ros-warehouse, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning-interface";
  version = "0.9.17-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning_interface/0.9.17-1.tar.gz;
    sha256 = "f87fa2d2113bc9deabc3fb3d8875ae52d2d63bbcbd6cd174980c956874253178";
  };

  buildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole moveit-ros-manipulation eigenpy roscpp moveit-ros-warehouse tf-conversions actionlib rospy moveit-msgs eigen-conversions tf eigen ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole moveit-ros-manipulation eigenpy roscpp moveit-ros-warehouse tf-conversions actionlib rospy moveit-msgs eigen-conversions tf ];
  nativeBuildInputs = [ pythonPackages.catkin-pkg catkin ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
