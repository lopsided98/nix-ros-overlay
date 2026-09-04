
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, gz-plugin-vendor, gz-sim-vendor, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-gz-ros2-control";
  version = "2.0.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/kilted/gz_ros2_control/2.0.17-1.tar.gz";
    name = "2.0.17-1.tar.gz";
    sha256 = "23cf98e09308cc9410c0a54cf31a413f3ac16ad87ca3ad6eb20a57f7b72f6b44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager gz-plugin-vendor gz-sim-vendor hardware-interface pluginlib rclcpp rclcpp-lifecycle ros2-control-cmake yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
