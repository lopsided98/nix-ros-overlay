
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, controller-manager, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing, rclcpp, rclpy, robot-state-publisher, ros-testing, ros2-control-cmake, ros2-control-test-assets, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-kilted-joint-state-topic-hardware-interface";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/topic_based_hardware-release/archive/release/kilted/joint_state_topic_hardware_interface/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "89b8b4c8a9f34afe664ee43b605cb163e5571698dbc275054c761f336b1126bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-ros launch-testing rclpy robot-state-publisher ros-testing ros2-control-test-assets xacro ];
  propagatedBuildInputs = [ angles hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface for JointState topic based control";
    license = with lib.licenses; [ asl20 ];
  };
}
