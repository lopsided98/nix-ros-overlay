
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, eigen, eigenpy, geometry-msgs, moveit-msgs, moveit-resources, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, python, pythonPackages, rosconsole, roscpp, rospy, rostest, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning-interface";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning_interface/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f68c495c75d0c3ee11bf1e8235f63df94439df395eb19a9265baf8a70356b57f";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ actionlib eigenpy geometry-msgs moveit-msgs moveit-ros-manipulation moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python rosconsole roscpp rospy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
