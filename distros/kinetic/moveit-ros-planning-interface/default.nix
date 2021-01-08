
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, eigen, eigen-conversions, eigenpy, moveit-msgs, moveit-resources, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, python, pythonPackages, rosconsole, roscpp, rospy, rostest, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning-interface";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning_interface/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "ccedbb78ed6b763555be0fb5f05b1711f85f4f2dcba5785c95b4883230e0062c";
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
