
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, hardware-interface, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-hardware";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_hardware/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c3e2a5c39a3f76ffd43a2563ec5fd313669799dabc4cec8dd9c26068d22bdefa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk hardware-interface pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package for turtlebot3_manipulation_hardware";
    license = with lib.licenses; [ asl20 ];
  };
}
