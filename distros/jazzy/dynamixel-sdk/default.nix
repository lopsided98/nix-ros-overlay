
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python }:
buildRosPackage {
  pname = "ros-jazzy-dynamixel-sdk";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/jazzy/dynamixel_sdk/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "3afe7cd7a3e7d42f746548bfdf20638ae44eb3491dd523689b3a8ce09fcb9182";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "This package is wrapping version of ROBOTIS Dynamixel SDK for ROS 2. The ROBOTIS Dynamixel SDK, or SDK, is a software development library that provides Dynamixel control functions for packet communication. The API is designed for Dynamixel actuators and Dynamixel-based platforms.";
    license = with lib.licenses; [ asl20 ];
  };
}
