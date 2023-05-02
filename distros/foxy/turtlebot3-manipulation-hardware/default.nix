
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, hardware-interface, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation-hardware";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation_hardware/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "e62f94d0460aca20b72c45755db138ebd936bc816951fedbf1ac18fea57c8b56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk hardware-interface pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 package for turtlebot3_manipulation_hardware'';
    license = with lib.licenses; [ asl20 ];
  };
}
