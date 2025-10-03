
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, controller-manager, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing, rclcpp, rclpy, robot-state-publisher, ros-testing, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-rolling-joint-state-topic-hardware-interface";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/rolling/joint_state_topic_hardware_interface/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "02359e29a5fad7fc1be406fd879a3798655bbbed6687e710d230a07ffd3f4051";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-testing rclpy robot-state-publisher ros-testing ros2-control-test-assets xacro ];
  propagatedBuildInputs = [ angles hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface for JointState topic based control";
    license = with lib.licenses; [ asl20 ];
  };
}
