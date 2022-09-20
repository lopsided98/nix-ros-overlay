
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, eigen, eigen-conversions, eigenpy, geometry-msgs, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, python, pythonPackages, rosconsole, roscpp, rospy, rostest, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning-interface";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning_interface/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "df1fec336274f651e43ae3792b81dfae30788edfff11163c52bf51d6ff3661d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen pythonPackages.catkin-pkg ];
  checkInputs = [ eigen-conversions moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib eigenpy geometry-msgs moveit-msgs moveit-ros-manipulation moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python rosconsole roscpp rospy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
