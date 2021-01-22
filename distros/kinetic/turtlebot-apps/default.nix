
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot-actions, turtlebot-calibration, turtlebot-follower, turtlebot-navigation, turtlebot-rapps }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-apps";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_apps/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "e6f717d30a6035fce7aec2c9c4fa0713f0205d0b0a7ef21c834f4a658f5a79c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot-actions turtlebot-calibration turtlebot-follower turtlebot-navigation turtlebot-rapps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_apps is a group of simple demos and exmaples to run on your TurtleBot to help you get started with ROS and TurtleBot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
