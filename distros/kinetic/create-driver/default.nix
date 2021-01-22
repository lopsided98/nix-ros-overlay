
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-create-driver";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_create-release/archive/release/kinetic/create_driver/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "afbac7275f72b6fce3b37599413f65fb25cc2470b3e33d82f6d36174ed999297";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for iRobot Create and Roomba
    
    This is a generic driver for iRobot Create that currently holds
    implementations for Turtlebot and Roomba. Port
    of pyrobot.py by Damon Kohler.  It is currently labeled as
    turtlebot_driver pending review by the entire create community
    before using the name create_driver.
  
    For ROS bindings, please see turtlebot_node.'';
    license = with lib.licenses; [ mit ];
  };
}
