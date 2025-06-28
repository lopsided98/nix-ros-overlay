
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, libcap, pluginlib, rclcpp, rclcpp-lifecycle, robot-state-publisher, ros2controlcli, ros2launch, xacro }:
buildRosPackage {
  pname = "ros-kilted-synapticon-ros2-control";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/synapticon_ros2_control-release/archive/release/kilted/synapticon_ros2_control/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "640b6326118a0e64882f79e5f1b808493d763a0b1ba412143ea32f3506fe8b27";
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
