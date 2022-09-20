
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-dynamixel-sdk";
  version = "3.7.40-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/galactic/dynamixel_sdk/3.7.40-1.tar.gz";
    name = "3.7.40-1.tar.gz";
    sha256 = "1da0c352e65a649664e0666a9c53c7a0a09e2699329bdce3a9a86af767986669";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package is wrapping version of ROBOTIS Dynamixel SDK for ROS 2. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.'';
    license = with lib.licenses; [ asl20 ];
  };
}
