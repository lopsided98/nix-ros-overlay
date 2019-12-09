
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python, eigen, tf2, rostest, moveit-ros-warehouse, tf2-geometry-msgs, eigenpy, rosconsole, tf2-ros, catkin, pythonPackages, moveit-ros-manipulation, moveit-ros-planning, roscpp, rospy, moveit-ros-move-group, actionlib, moveit-resources, tf2-eigen, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning-interface";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning_interface/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f68c495c75d0c3ee11bf1e8235f63df94439df395eb19a9265baf8a70356b57f";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs moveit-ros-warehouse moveit-ros-move-group actionlib roscpp moveit-ros-manipulation tf2-eigen tf2-geometry-msgs eigenpy eigen python moveit-ros-planning moveit-msgs tf2 rospy rosconsole tf2-ros ];
  checkInputs = [ rostest moveit-resources ];
  propagatedBuildInputs = [ geometry-msgs moveit-ros-warehouse moveit-ros-move-group tf2 actionlib moveit-ros-manipulation moveit-ros-planning tf2-eigen tf2-geometry-msgs eigenpy python moveit-msgs roscpp rospy rosconsole tf2-ros ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
