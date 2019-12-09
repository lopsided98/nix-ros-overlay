
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, examples-rclpy-minimal-subscriber, examples-rclpy-minimal-action-client, dummy-sensors, quality-of-service-demo-py, examples-rclcpp-minimal-service, ament-cmake, demo-nodes-py, demo-nodes-cpp, logging-demo, rviz2, examples-rclpy-minimal-client, examples-rclcpp-minimal-action-client, examples-rclcpp-minimal-action-server, examples-rclpy-executors, teleop-twist-joy, composition, examples-rclpy-minimal-publisher, examples-rclpy-minimal-service, pendulum-control, examples-rclcpp-minimal-client, quality-of-service-demo-cpp, tlsf, examples-rclcpp-minimal-publisher, teleop-twist-keyboard, intra-process-demo, joy, dummy-robot-bringup, demo-nodes-cpp-native, examples-rclcpp-minimal-subscriber, pendulum-msgs, examples-rclcpp-minimal-timer, angles, lifecycle, examples-rclcpp-minimal-composition, depthimage-to-laserscan, topic-monitor, action-tutorials, tlsf-cpp, rviz-default-plugins, dummy-map-server, pcl-conversions, examples-rclpy-minimal-action-server, image-tools, ros-base }:
buildRosPackage {
  pname = "ros-dashing-desktop";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/dashing/desktop/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "9f72f2b955905a8695afa3b32e367789100deae52c18c38ec6bfa6c24a47ef91";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ examples-rclpy-minimal-subscriber examples-rclpy-minimal-action-client dummy-sensors quality-of-service-demo-py examples-rclcpp-minimal-service demo-nodes-py demo-nodes-cpp logging-demo rviz2 examples-rclpy-minimal-client examples-rclcpp-minimal-action-client examples-rclcpp-minimal-action-server examples-rclpy-executors teleop-twist-joy composition examples-rclpy-minimal-publisher examples-rclpy-minimal-service pendulum-control examples-rclcpp-minimal-client quality-of-service-demo-cpp tlsf examples-rclcpp-minimal-publisher teleop-twist-keyboard intra-process-demo joy dummy-robot-bringup demo-nodes-cpp-native examples-rclcpp-minimal-subscriber pendulum-msgs examples-rclcpp-minimal-timer angles lifecycle examples-rclcpp-minimal-composition depthimage-to-laserscan topic-monitor action-tutorials tlsf-cpp rviz-default-plugins dummy-map-server pcl-conversions examples-rclpy-minimal-action-server image-tools ros-base ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes high level packages like vizualization tools and demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
