
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-manager, gz-plugin-vendor, gz-sim-vendor, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-gz-ros2-control";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/kilted/gz_ros2_control/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "bb842f4e9566758db193b1beb0e8250f0f733bcea6b4b693772011fbc586e7f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp controller-manager gz-plugin-vendor gz-sim-vendor hardware-interface pluginlib rclcpp rclcpp-lifecycle ros2-control-cmake yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
