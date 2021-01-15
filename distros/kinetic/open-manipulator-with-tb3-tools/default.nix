
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, ar-track-alvar-msgs, catkin, geometry-msgs, joint-state-publisher, map-server, move-base, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, nav-msgs, open-manipulator-msgs, robot-state-publisher, roscpp, roslaunch, rospy, smach, smach-ros, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-tools";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/kinetic/open_manipulator_with_tb3_tools/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "df2f23099b911daa96c63008030efe205c170a22f2cce4be524446fb3433d481";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl ar-track-alvar-msgs geometry-msgs joint-state-publisher map-server move-base moveit-core moveit-msgs moveit-ros-planning moveit-ros-planning-interface nav-msgs open-manipulator-msgs robot-state-publisher roscpp roslaunch rospy smach smach-ros std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tools package(including SLAM, Navigation, Manipulation) for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
