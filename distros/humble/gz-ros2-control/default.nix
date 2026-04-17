
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, _unresolved_ignition-plugin, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control";
  version = "0.7.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control/0.7.19-1.tar.gz";
    name = "0.7.19-1.tar.gz";
    sha256 = "91032e7ceb0dc6ce39400107dd3afa207d829a0ff270aa9bf1f277c6bb95fe40";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 _unresolved_ignition-plugin ament-index-cpp controller-manager hardware-interface pluginlib rclcpp rclcpp-lifecycle yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
