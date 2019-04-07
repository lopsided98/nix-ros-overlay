
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, create-driver, python-orocos-kdl, catkin, nav-msgs, message-generation, message-runtime, rospy, diagnostic-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-create-node";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_create-release/archive/release/kinetic/create_node/2.3.1-0.tar.gz;
    sha256 = "0d07fac75280d2c2db2845e8a475a6ecd4cfc19959e578c5c8d20db8e6928e59";
  };

  buildInputs = [ nav-msgs message-generation dynamic-reconfigure create-driver diagnostic-msgs tf geometry-msgs rospy ];
  propagatedBuildInputs = [ create-driver python-orocos-kdl rospy nav-msgs message-runtime dynamic-reconfigure diagnostic-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''iRobot Create ROS driver node
    
    ROS bindings for the Create/Roomba driver.
    
    This is based on otl_roomba driver by OTL, ported to use
    create_driver's implementation instead. 
    This also contains a 'bonus' feature from the turtlebot 
    driver by Xuwen Cao and Morgan Quigley.'';
    #license = lib.licenses.BSD;
  };
}
