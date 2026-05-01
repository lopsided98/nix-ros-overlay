
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-ros, angles, control-msgs, controller-manager, forward-command-controller, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing, launch-testing-ament-cmake, rclcpp, rclpy, robot-state-publisher, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-lyrical-joint-state-topic-hardware-interface";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/lyrical/joint_state_topic_hardware_interface/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "a33a4d1fa1ef0f2152e395ab1eaec8cd2b651c2b1d0c5a2a1c1bb66052bd07e6";
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
