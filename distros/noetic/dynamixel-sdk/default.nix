
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-sdk";
  version = "3.7.51-r4";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/noetic/dynamixel_sdk/3.7.51-4.tar.gz";
    name = "3.7.51-4.tar.gz";
    sha256 = "2af181d5c4a9fbadfaf2b4d52e26836aa038c22dcc233c85487712b7300a8c8b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is wrapping version of ROBOTIS Dynamixel SDK for ROS. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.'';
    license = with lib.licenses; [ asl20 ];
  };
}
