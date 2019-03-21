
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosconsole, actionlib, rospy, geometry-msgs, pythonPackages, tf2-geometry-msgs, catkin, moveit-ros-manipulation, tf2-ros, moveit-msgs, roscpp, moveit-resources, python, moveit-ros-move-group, rostest, tf2, moveit-ros-warehouse, tf2-eigen, eigen }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning-interface";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning_interface/1.0.1-0.tar.gz;
    sha256 = "3d9447fa2f84157ef3613cc32133286a7475fee7410a3bdbaa6653833aa485f1";
  };

  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole tf2-geometry-msgs moveit-ros-manipulation tf2-ros tf2 moveit-ros-warehouse tf2-eigen actionlib rospy moveit-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ python moveit-ros-planning moveit-ros-move-group rosconsole tf2-geometry-msgs catkin moveit-ros-manipulation tf2-ros tf2 moveit-ros-warehouse tf2-eigen actionlib rospy moveit-msgs pythonPackages.catkin-pkg roscpp geometry-msgs eigen ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    #license = lib.licenses.BSD;
  };
}
