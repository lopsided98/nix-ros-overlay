
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, examples-rclcpp-minimal-subscriber, ament-cmake, rviz-default-plugins, action-tutorials, demo-nodes-cpp-native, examples-rclpy-minimal-action-client, demo-nodes-py, examples-rclpy-minimal-client, composition, demo-nodes-cpp, pcl-conversions, topic-monitor, examples-rclcpp-minimal-client, examples-rclcpp-minimal-composition, pendulum-control, intra-process-demo, teleop-twist-keyboard, examples-rclpy-executors, examples-rclcpp-minimal-action-client, teleop-twist-joy, angles, quality-of-service-demo-py, examples-rclcpp-minimal-action-server, depthimage-to-laserscan, dummy-map-server, dummy-sensors, dummy-robot-bringup, examples-rclpy-minimal-action-server, ros-base, examples-rclpy-minimal-subscriber, examples-rclpy-minimal-publisher, joy, quality-of-service-demo-cpp, image-tools, examples-rclcpp-minimal-service, pendulum-msgs, rviz2, examples-rclcpp-minimal-timer, examples-rclcpp-minimal-publisher, examples-rclpy-minimal-service, tlsf, logging-demo, tlsf-cpp, lifecycle }:
buildRosPackage {
  pname = "ros-dashing-desktop";
  version = "0.7.2-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/variants-release/archive/release/dashing/desktop/0.7.2-1.tar.gz;
    sha256 = "9f72f2b955905a8695afa3b32e367789100deae52c18c38ec6bfa6c24a47ef91";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ examples-rclcpp-minimal-subscriber action-tutorials rviz-default-plugins demo-nodes-cpp-native examples-rclpy-minimal-action-client demo-nodes-py examples-rclpy-minimal-client composition demo-nodes-cpp pcl-conversions lifecycle topic-monitor examples-rclcpp-minimal-client examples-rclcpp-minimal-composition pendulum-control intra-process-demo teleop-twist-keyboard examples-rclpy-executors examples-rclcpp-minimal-action-client teleop-twist-joy angles quality-of-service-demo-py examples-rclcpp-minimal-action-server depthimage-to-laserscan dummy-sensors dummy-robot-bringup examples-rclpy-minimal-action-server ros-base examples-rclpy-minimal-subscriber examples-rclpy-minimal-publisher joy quality-of-service-demo-cpp image-tools examples-rclcpp-minimal-service pendulum-msgs rviz2 examples-rclcpp-minimal-timer examples-rclcpp-minimal-publisher examples-rclpy-minimal-service tlsf logging-demo tlsf-cpp dummy-map-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes high level packages like vizualization tools and demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
