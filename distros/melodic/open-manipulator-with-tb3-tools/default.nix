
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, ar-track-alvar-msgs, catkin, geometry-msgs, joint-state-publisher, map-server, move-base, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, nav-msgs, open-manipulator-msgs, robot-state-publisher, roscpp, roslaunch, rospy, smach, smach-ros, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-tools";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/open_manipulator_with_tb3_tools/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "6095647043adf0b59ecb69da2f441cbf996fa4729007040dbe2856d3d7341dab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl ar-track-alvar-msgs geometry-msgs joint-state-publisher map-server move-base moveit-core moveit-msgs moveit-ros-planning moveit-ros-planning-interface nav-msgs open-manipulator-msgs robot-state-publisher roscpp roslaunch rospy smach smach-ros std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tools package(including SLAM, Navigation, Manipulation) for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
