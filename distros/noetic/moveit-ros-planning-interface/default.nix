
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, eigen, eigenpy, geometry-msgs, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, python3, python3Packages, rosconsole, roscpp, rospy, rostest, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-planning-interface";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_planning_interface/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "e9b2d4812d28011bba657c7b31080e27eb2e59fe5feace08b68602b3783caf31";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib eigenpy geometry-msgs moveit-msgs moveit-ros-manipulation moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python3 rosconsole roscpp rospy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg ];

  meta = {
    description = ''Components of MoveIt that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
