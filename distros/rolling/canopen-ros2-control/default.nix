
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, canopen-402-driver, canopen-core, canopen-proxy-driver, hardware-interface, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-canopen-ros2-control";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_ros2_control/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "ac93db3e867c90dff4112da1437e2fbdfbd64d9699d81a292bf55021303ca4c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ canopen-402-driver canopen-core canopen-proxy-driver hardware-interface pluginlib rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control wrapper for ros2_canopen functionalities";
    license = with lib.licenses; [ asl20 ];
  };
}
