
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, hardware-interface, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-hardware";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_hardware/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "da54bbf104ee7750967f837c682e403c290ce52103c93195ae5ed542247254e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dynamixel-sdk hardware-interface pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package for turtlebot3_manipulation_hardware'';
    license = with lib.licenses; [ asl20 ];
  };
}
