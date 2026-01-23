
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, libcap, pluginlib, rclcpp, rclcpp-lifecycle, robot-state-publisher, ros-testing, ros2controlcli, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-synapticon-ros2-control";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/synapticon/synapticon_ros2_control-release/archive/release/humble/synapticon_ros2_control/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "4fa9d2781d26549f66d05b5ae101a57cc4612f13583f814008d77f820be181a7";
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
