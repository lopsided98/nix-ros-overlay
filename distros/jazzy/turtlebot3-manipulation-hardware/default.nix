
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, hardware-interface, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-manipulation-hardware";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/jazzy/turtlebot3_manipulation_hardware/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "906d93c4aa6b8c9f40bec4ab68078d2f80c2864285bfb5253dd2c43258526b2b";
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
