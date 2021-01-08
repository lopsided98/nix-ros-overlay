
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslaunch, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-autorace-core";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/turtlebot3_autorace_core/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "96b42f85bcbebf50bfb381f5459d49f05d4364d7eeb65fa0aad04c39aa69c4dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.numpy roslaunch rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that TurtleBot3 Auto's core'';
    license = with lib.licenses; [ asl20 ];
  };
}
