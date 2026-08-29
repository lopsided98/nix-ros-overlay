
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, robstride-driver }:
buildRosPackage {
  pname = "ros-humble-robstride-ros2-control";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/humble/robstride_ros2_control/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "95da360a22a2588227f8469ed437dd5bb208c7c5c0aff844669d2639399d1a5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ hardware-interface pluginlib rclcpp rclcpp-lifecycle robstride-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control SystemInterface for multi-axis RobStride private-CAN actuators.";
    license = with lib.licenses; [ mit ];
  };
}
