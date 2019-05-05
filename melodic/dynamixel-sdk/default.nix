
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-sdk";
  version = "3.7.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/melodic/dynamixel_sdk/3.7.0-0.tar.gz;
    sha256 = "f6e3f4d552bb5e39c857b79e0c53233791f44ec01cbc768a507fb434f67d4492";
  };

  buildInputs = [ roscpp rospy ];
  propagatedBuildInputs = [ roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is wrapping version of ROBOTIS Dynamxel SDK for ROS. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.'';
    license = with lib.licenses; [ asl20 ];
  };
}
