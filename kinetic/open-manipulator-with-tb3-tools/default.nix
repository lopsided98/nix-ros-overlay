
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, smach-ros, ar-track-alvar-msgs, rospy, geometry-msgs, map-server, moveit-core, robot-state-publisher, roslaunch, moveit-ros-planning-interface, joint-state-publisher, smach, trajectory-msgs, catkin, move-base, nav-msgs, std-msgs, moveit-msgs, roscpp, amcl, open-manipulator-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-tools";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/kinetic/open_manipulator_with_tb3_tools/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "df2f23099b911daa96c63008030efe205c170a22f2cce4be524446fb3433d481";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning geometry-msgs smach trajectory-msgs smach-ros ar-track-alvar-msgs nav-msgs moveit-core rospy std-msgs moveit-msgs roslaunch roscpp moveit-ros-planning-interface open-manipulator-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning smach-ros ar-track-alvar-msgs rospy geometry-msgs map-server moveit-core robot-state-publisher roslaunch smach moveit-ros-planning-interface joint-state-publisher trajectory-msgs move-base nav-msgs std-msgs moveit-msgs roscpp amcl open-manipulator-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tools package(including SLAM, Navigation, Manipulation) for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
