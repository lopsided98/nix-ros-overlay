
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, eigen, eigen-conversions, eigenpy, geometry-msgs, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, python, pythonPackages, rosconsole, roscpp, rospy, rostest, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning-interface";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning_interface/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "470e33e7ea0bca30a0d9eda9f2146e918ae3c1d7969de4d787638657f0a2e5b4";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ eigen-conversions moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib eigenpy geometry-msgs moveit-msgs moveit-ros-manipulation moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python rosconsole roscpp rospy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Components of MoveIt! that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
