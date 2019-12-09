
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, examples-rclpy-minimal-subscriber, dummy-sensors, examples-rclcpp-minimal-service, ament-cmake, sros2, demo-nodes-py, demo-nodes-cpp, logging-demo, rviz2, examples-rclpy-minimal-client, examples-rclcpp-minimal-action-client, examples-rclcpp-minimal-action-server, examples-rclpy-executors, teleop-twist-joy, composition, examples-rclpy-minimal-publisher, examples-rclpy-minimal-service, pendulum-control, examples-rclcpp-minimal-client, tlsf, examples-rclcpp-minimal-publisher, teleop-twist-keyboard, intra-process-demo, joy, dummy-robot-bringup, demo-nodes-cpp-native, examples-rclcpp-minimal-subscriber, examples-rclcpp-minimal-timer, angles, lifecycle, examples-rclcpp-minimal-composition, depthimage-to-laserscan, topic-monitor, tlsf-cpp, rviz-default-plugins, dummy-map-server, pcl-conversions, image-tools, ros-base }:
buildRosPackage {
  pname = "ros-crystal-desktop";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/crystal/desktop/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "ea16bc7630a42e64f787bf24c164a20cbc7c22c66bcfe04f248e5c1c3d7615fd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ examples-rclpy-minimal-subscriber dummy-sensors examples-rclcpp-minimal-service sros2 demo-nodes-py demo-nodes-cpp logging-demo rviz2 examples-rclpy-minimal-client examples-rclcpp-minimal-action-client examples-rclcpp-minimal-action-server examples-rclpy-executors teleop-twist-joy composition examples-rclpy-minimal-publisher examples-rclpy-minimal-service pendulum-control examples-rclcpp-minimal-client tlsf examples-rclcpp-minimal-publisher teleop-twist-keyboard intra-process-demo joy dummy-robot-bringup demo-nodes-cpp-native examples-rclcpp-minimal-subscriber examples-rclcpp-minimal-timer angles lifecycle examples-rclcpp-minimal-composition depthimage-to-laserscan topic-monitor tlsf-cpp rviz-default-plugins dummy-map-server pcl-conversions image-tools ros-base ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes high level packages like vizualization tools and demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
