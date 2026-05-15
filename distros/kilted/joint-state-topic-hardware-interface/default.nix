
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-ros, angles, control-msgs, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing, launch-testing-ament-cmake, rclcpp, rclpy, robot-state-publisher, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-kilted-joint-state-topic-hardware-interface";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/kilted/joint_state_topic_hardware_interface/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d4c63ad98d7764682b00fd150277e5a48c9f507b8f2959eb0961a1a4895c6f1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-ros control-msgs controller-manager forward-command-controller joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-testing launch-testing-ament-cmake rclpy robot-state-publisher ros2-control-test-assets topic-tools xacro ];
  propagatedBuildInputs = [ angles hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface for JointState topic based control";
    license = with lib.licenses; [ asl20 ];
  };
}
