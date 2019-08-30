
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-sdk";
  version = "3.7.11-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/DynamixelSDK-release/archive/release/kinetic/dynamixel_sdk/3.7.11-1.tar.gz;
    sha256 = "db3f2c9099cd8aeffaaff1b57a49929347763e0162304d5e27e745f468776e35";
  };

  buildInputs = [ roscpp rospy ];
  propagatedBuildInputs = [ roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is wrapping version of ROBOTIS Dynamxel SDK for ROS. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.'';
    license = with lib.licenses; [ asl20 ];
  };
}
