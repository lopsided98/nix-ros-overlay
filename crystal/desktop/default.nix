
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, examples-rclcpp-minimal-subscriber, ament-cmake, rviz-default-plugins, demo-nodes-cpp-native, demo-nodes-py, examples-rclpy-minimal-client, composition, demo-nodes-cpp, pcl-conversions, topic-monitor, examples-rclcpp-minimal-client, examples-rclcpp-minimal-composition, pendulum-control, sros2, intra-process-demo, teleop-twist-keyboard, examples-rclpy-executors, examples-rclcpp-minimal-action-client, teleop-twist-joy, angles, examples-rclcpp-minimal-action-server, depthimage-to-laserscan, dummy-map-server, dummy-sensors, dummy-robot-bringup, ros-base, examples-rclpy-minimal-subscriber, examples-rclpy-minimal-publisher, joy, image-tools, examples-rclcpp-minimal-service, rviz2, examples-rclcpp-minimal-timer, examples-rclcpp-minimal-publisher, examples-rclpy-minimal-service, tlsf, logging-demo, tlsf-cpp, lifecycle }:
buildRosPackage {
  pname = "ros-crystal-desktop";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/variants-release/archive/release/crystal/desktop/0.6.1-0.tar.gz;
    sha256 = "ea16bc7630a42e64f787bf24c164a20cbc7c22c66bcfe04f248e5c1c3d7615fd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ examples-rclcpp-minimal-subscriber rviz-default-plugins demo-nodes-cpp-native demo-nodes-py examples-rclpy-minimal-client composition demo-nodes-cpp pcl-conversions lifecycle topic-monitor examples-rclcpp-minimal-client examples-rclcpp-minimal-composition pendulum-control sros2 intra-process-demo teleop-twist-keyboard examples-rclpy-executors examples-rclcpp-minimal-action-client teleop-twist-joy angles examples-rclcpp-minimal-action-server depthimage-to-laserscan dummy-sensors dummy-robot-bringup ros-base examples-rclpy-minimal-subscriber examples-rclpy-minimal-publisher joy image-tools examples-rclcpp-minimal-service rviz2 examples-rclcpp-minimal-timer examples-rclcpp-minimal-publisher examples-rclpy-minimal-service tlsf logging-demo tlsf-cpp dummy-map-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes high level packages like vizualization tools and demos.'';
    license = with lib.licenses; [ asl20 ];
  };
}
