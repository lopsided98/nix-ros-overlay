
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, libcap, pluginlib, rclcpp, rclcpp-lifecycle, robot-state-publisher, ros2controlcli, ros2launch, xacro }:
buildRosPackage {
  pname = "ros-humble-synapticon-ros2-control";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/synapticon/synapticon_ros2_control-release/archive/release/humble/synapticon_ros2_control/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "e3b3aba1610313fa5e6490f7a4a504c025441b5bb59200afddc9150ab8a02be7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager forward-command-controller hardware-interface joint-state-broadcaster joint-trajectory-controller libcap pluginlib rclcpp rclcpp-lifecycle robot-state-publisher ros2controlcli ros2launch xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ros2_control interface for Synapticon motor drivers";
    license = with lib.licenses; [ mit ];
  };
}
