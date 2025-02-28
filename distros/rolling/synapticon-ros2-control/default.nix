
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, libcap, pluginlib, rclcpp, rclcpp-lifecycle, robot-state-publisher, ros2controlcli, ros2launch, xacro }:
buildRosPackage {
  pname = "ros-rolling-synapticon-ros2-control";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/synapticon/synapticon_ros2_control-release/archive/release/rolling/synapticon_ros2_control/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "b584a7d0f6f40f84d83dfac0b11b91bd38cd75969c5f3876708a11d4d7bc4b27";
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
