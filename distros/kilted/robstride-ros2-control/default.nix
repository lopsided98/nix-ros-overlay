
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, robstride-driver, xacro }:
buildRosPackage {
  pname = "ros-kilted-robstride-ros2-control";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/kilted/robstride_ros2_control/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "84bda86765c9651a3d7d78b5e7ed0e9ae05e1fa19b23680062d75046d90f5935";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ hardware-interface pluginlib rclcpp rclcpp-lifecycle robstride-driver xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control SystemInterface for multi-axis RobStride private-CAN actuators.";
    license = with lib.licenses; [ mit ];
  };
}
