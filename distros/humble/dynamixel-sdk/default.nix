
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-dynamixel-sdk";
  version = "3.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/humble/dynamixel_sdk/3.8.1-1.tar.gz";
    name = "3.8.1-1.tar.gz";
    sha256 = "42ad9fde7a326163d440452d731f2bbbd2041410e81bf2fb692df984ecf1c97e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package is wrapping version of ROBOTIS Dynamixel SDK for ROS 2. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.";
    license = with lib.licenses; [ asl20 ];
  };
}
