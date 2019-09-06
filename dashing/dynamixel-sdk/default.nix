
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-dynamixel-sdk";
  version = "3.7.20-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/dashing/dynamixel_sdk/3.7.20-1.tar.gz";
    name = "3.7.20-1.tar.gz";
    sha256 = "3414e7a3a2f70fdd8b1e2d64a1befd58c9cc9df73834579b41024c80536bb078";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package is wrapping version of ROBOTIS Dynamixel SDK for ROS 2. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.'';
    license = with lib.licenses; [ asl20 ];
  };
}
