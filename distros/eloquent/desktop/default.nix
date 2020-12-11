
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-cpp, action-tutorials-interfaces, action-tutorials-py, ament-cmake, angles, composition, demo-nodes-cpp, demo-nodes-cpp-native, demo-nodes-py, depthimage-to-laserscan, dummy-map-server, dummy-robot-bringup, dummy-sensors, examples-rclcpp-minimal-action-client, examples-rclcpp-minimal-action-server, examples-rclcpp-minimal-client, examples-rclcpp-minimal-composition, examples-rclcpp-minimal-publisher, examples-rclcpp-minimal-service, examples-rclcpp-minimal-subscriber, examples-rclcpp-minimal-timer, examples-rclpy-executors, examples-rclpy-minimal-action-client, examples-rclpy-minimal-action-server, examples-rclpy-minimal-client, examples-rclpy-minimal-publisher, examples-rclpy-minimal-service, examples-rclpy-minimal-subscriber, image-tools, intra-process-demo, joy, lifecycle, logging-demo, pcl-conversions, pendulum-control, pendulum-msgs, quality-of-service-demo-cpp, quality-of-service-demo-py, ros-base, rqt-common-plugins, rviz-default-plugins, rviz2, teleop-twist-joy, teleop-twist-keyboard, tlsf, tlsf-cpp, topic-monitor, turtlesim }:
buildRosPackage {
  pname = "ros-eloquent-desktop";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/eloquent/desktop/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "fe499f36519e23a0db970a68b76850722e0dcfed3f79fb2c18b072d35cf4c42d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ action-tutorials-cpp action-tutorials-interfaces action-tutorials-py angles composition demo-nodes-cpp demo-nodes-cpp-native demo-nodes-py depthimage-to-laserscan dummy-map-server dummy-robot-bringup dummy-sensors examples-rclcpp-minimal-action-client examples-rclcpp-minimal-action-server examples-rclcpp-minimal-client examples-rclcpp-minimal-composition examples-rclcpp-minimal-publisher examples-rclcpp-minimal-service examples-rclcpp-minimal-subscriber examples-rclcpp-minimal-timer examples-rclpy-executors examples-rclpy-minimal-action-client examples-rclpy-minimal-action-server examples-rclpy-minimal-client examples-rclpy-minimal-publisher examples-rclpy-minimal-service examples-rclpy-minimal-subscriber image-tools intra-process-demo joy lifecycle logging-demo pcl-conversions pendulum-control pendulum-msgs quality-of-service-demo-cpp quality-of-service-demo-py ros-base rqt-common-plugins rviz-default-plugins rviz2 teleop-twist-joy teleop-twist-keyboard tlsf tlsf-cpp topic-monitor turtlesim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes high level packages like vizualization tools and demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
