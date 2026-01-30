
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, libcap, pluginlib, rclcpp, rclcpp-lifecycle, robot-state-publisher, ros-testing, ros2controlcli, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-synapticon-ros2-control";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/synapticon/synapticon_ros2_control-release/archive/release/jazzy/synapticon_ros2_control/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "532bb6ea2f8fde67480e5a7ec48a381e40fc499797b12703e1614c20936f7b8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ros-testing ];
  propagatedBuildInputs = [ controller-manager forward-command-controller hardware-interface joint-state-broadcaster joint-trajectory-controller libcap pluginlib rclcpp rclcpp-lifecycle robot-state-publisher ros2controlcli ros2launch rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ros2_control interface for Synapticon motor drivers";
    license = with lib.licenses; [ mit ];
  };
}
