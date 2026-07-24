
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-kuka-mock-hardware-interface";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_mock_hardware_interface/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "98432210f6d2698b98230a79d3a2458c9e1b4827c8417d515a140411bbe1f50e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 control mock hardware for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
