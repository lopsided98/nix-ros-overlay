
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, canopen-402-driver, canopen-core, canopen-proxy-driver, hardware-interface, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-canopen-ros2-control";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_ros2_control/0.2.8-1.tar.gz";
    name = "0.2.8-1.tar.gz";
    sha256 = "0edce15de5aa81d988aa0b1fb983b7b157f8397602521fa372c0800598f3a379";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ canopen-402-driver canopen-core canopen-proxy-driver hardware-interface pluginlib rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2_control wrapper for ros2_canopen functionalities'';
    license = with lib.licenses; [ asl20 ];
  };
}
