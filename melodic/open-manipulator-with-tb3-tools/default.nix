
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, smach-ros, ar-track-alvar-msgs, rospy, geometry-msgs, map-server, moveit-core, robot-state-publisher, roslaunch, moveit-ros-planning-interface, joint-state-publisher, smach, trajectory-msgs, catkin, move-base, nav-msgs, std-msgs, moveit-msgs, roscpp, amcl, open-manipulator-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-tools";
  version = "1.1.0-r2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/open_manipulator_with_tb3_tools/1.1.0-2.tar.gz;
    sha256 = "6095647043adf0b59ecb69da2f441cbf996fa4729007040dbe2856d3d7341dab";
  };

  propagatedBuildInputs = [ moveit-ros-planning trajectory-msgs smach-ros move-base ar-track-alvar-msgs joint-state-publisher nav-msgs rospy std-msgs moveit-msgs roscpp geometry-msgs map-server amcl moveit-ros-planning-interface moveit-core robot-state-publisher roslaunch smach open-manipulator-msgs ];
  nativeBuildInputs = [ moveit-ros-planning geometry-msgs smach trajectory-msgs catkin smach-ros ar-track-alvar-msgs nav-msgs moveit-core rospy std-msgs moveit-msgs roslaunch roscpp moveit-ros-planning-interface open-manipulator-msgs ];

  meta = {
    description = ''The tools package(including SLAM, Navigation, Manipulation) for OpenManipulator with TurtleBot3'';
    #license = lib.licenses.Apache 2.0;
  };
}
