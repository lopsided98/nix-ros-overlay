
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-sdk";
  version = "3.7.31-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/noetic/dynamixel_sdk/3.7.31-1.tar.gz";
    name = "3.7.31-1.tar.gz";
    sha256 = "258090ab7b333982492ec6361b98b49850837cab53d11a7860918078e4f075c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is wrapping version of ROBOTIS Dynamixel SDK for ROS. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.'';
    license = with lib.licenses; [ asl20 ];
  };
}
