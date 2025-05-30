
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, canopen-402-driver, canopen-core, canopen-proxy-driver, hardware-interface, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-canopen-ros2-control";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_ros2_control/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "d8961395b90cca131da81eaad659d1a824109db01421f5ddde3b344e71c5adbd";
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
