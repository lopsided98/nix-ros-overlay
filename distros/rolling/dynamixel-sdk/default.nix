
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-sdk";
  version = "3.7.40-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/rolling/dynamixel_sdk/3.7.40-5.tar.gz";
    name = "3.7.40-5.tar.gz";
    sha256 = "a3cc954fc3d305729a2d5d17c74fc34b668aee487af1ff23d5d938d1d6b941d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package is wrapping version of ROBOTIS Dynamixel SDK for ROS 2. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.";
    license = with lib.licenses; [ asl20 ];
  };
}
