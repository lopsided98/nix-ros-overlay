
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, eigen, eigen-conversions, eigenpy, moveit-msgs, moveit-resources, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, python, pythonPackages, rosconsole, roscpp, rospy, rostest, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning-interface";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning_interface/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "f87fa2d2113bc9deabc3fb3d8875ae52d2d63bbcbd6cd174980c956874253178";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ actionlib eigen-conversions eigenpy moveit-msgs moveit-ros-manipulation moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python rosconsole roscpp rospy tf tf-conversions ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
