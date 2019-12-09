
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, smach-ros, nav-msgs, robot-state-publisher, amcl, joint-state-publisher, moveit-core, moveit-ros-planning-interface, std-msgs, catkin, smach, moveit-ros-planning, roscpp, ar-track-alvar-msgs, rospy, roslaunch, trajectory-msgs, map-server, open-manipulator-msgs, moveit-msgs, move-base }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-tools";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/kinetic/open_manipulator_with_tb3_tools/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "df2f23099b911daa96c63008030efe205c170a22f2cce4be524446fb3433d481";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs moveit-core geometry-msgs std-msgs moveit-ros-planning-interface roslaunch smach roscpp smach-ros open-manipulator-msgs moveit-msgs moveit-ros-planning ar-track-alvar-msgs rospy nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs smach-ros nav-msgs robot-state-publisher amcl joint-state-publisher moveit-core std-msgs moveit-ros-planning-interface smach roscpp moveit-ros-planning ar-track-alvar-msgs rospy roslaunch trajectory-msgs map-server open-manipulator-msgs move-base moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tools package(including SLAM, Navigation, Manipulation) for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
