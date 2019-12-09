
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, diagnostic-msgs, dynamic-reconfigure, tf, catkin, python-orocos-kdl, rospy, create-driver, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-create-node";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_create-release/archive/release/kinetic/create_node/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "0d07fac75280d2c2db2845e8a475a6ecd4cfc19959e578c5c8d20db8e6928e59";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs geometry-msgs dynamic-reconfigure tf rospy create-driver message-generation nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs diagnostic-msgs dynamic-reconfigure tf python-orocos-kdl rospy create-driver message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''iRobot Create ROS driver node
    
    ROS bindings for the Create/Roomba driver.
    
    This is based on otl_roomba driver by OTL, ported to use
    create_driver's implementation instead. 
    This also contains a 'bonus' feature from the turtlebot 
    driver by Xuwen Cao and Morgan Quigley.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
