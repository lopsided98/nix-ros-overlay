
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslaunch, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-core";
  version = "1.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_core/1.1.0-7.tar.gz";
    name = "1.1.0-7.tar.gz";
    sha256 = "b12960f4765807e11f6b26b0df57ee7c7905e3ed29847e8ff5b3d7fbebe8b04e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.numpy roslaunch rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that TurtleBot3 Auto's core'';
    license = with lib.licenses; [ asl20 ];
  };
}
