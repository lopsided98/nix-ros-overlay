
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen-conversions, tf, python, eigen, rostest, moveit-ros-warehouse, eigenpy, rosconsole, catkin, pythonPackages, moveit-ros-manipulation, roscpp, moveit-ros-planning, rospy, moveit-ros-move-group, actionlib, moveit-resources, moveit-msgs, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-planning-interface";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_planning_interface/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "f87fa2d2113bc9deabc3fb3d8875ae52d2d63bbcbd6cd174980c956874253178";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions moveit-ros-move-group moveit-ros-warehouse tf actionlib moveit-ros-manipulation moveit-ros-planning eigenpy python eigen moveit-msgs roscpp rospy tf-conversions rosconsole ];
  checkInputs = [ rostest moveit-resources ];
  propagatedBuildInputs = [ eigen-conversions moveit-ros-move-group moveit-ros-warehouse tf actionlib moveit-ros-manipulation moveit-ros-planning eigenpy python moveit-msgs roscpp rospy tf-conversions rosconsole ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
