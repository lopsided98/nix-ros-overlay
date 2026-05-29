
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-core, canopen-proxy-driver, hardware-interface, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-canopen-ros2-control";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_ros2_control/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "2ea2b304e5251a1aef0fcfb893e965f6cb13d9b619cf8beec8886999b5997f3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ros2-control-test-assets ];
  propagatedBuildInputs = [ canopen-402-driver canopen-core canopen-proxy-driver hardware-interface pluginlib rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control wrapper for ros2_canopen functionalities";
    license = with lib.licenses; [ asl20 ];
  };
}
