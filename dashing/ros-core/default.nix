
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, common-interfaces, ros-environment, ros2lifecycle, ros2msg, ament-cmake, rcl-lifecycle, class-loader, ament-cmake-auto, ros2param, rosidl-default-runtime, ros2service, ament-cmake-pytest, ros2action, sros2, ament-cmake-gtest, rclcpp, ament-index-python, ros2run, ros2topic, rclcpp-lifecycle, ros2node, ament-cmake-gmock, ros2component, ros2multicast, ros2launch, ament-cmake-ros, ament-index-cpp, pluginlib, ament-lint-common, rclpy, ros2srv, rosidl-default-generators, ros2pkg, ament-lint-auto, sros2-cmake }:
buildRosPackage {
  pname = "ros-dashing-ros-core";
  version = "0.7.2-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/variants-release/archive/release/dashing/ros_core/0.7.2-1.tar.gz;
    sha256 = "df67fe155b7c4889a180851a9c45ff571dfd74d3fa360e98079ed03366791792";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ common-interfaces ros-environment ros2lifecycle ros2msg ament-cmake rcl-lifecycle class-loader ament-cmake-auto ros2param rosidl-default-runtime ros2service ament-cmake-pytest ros2action sros2 ament-cmake-gtest rclcpp ament-index-python ros2run ros2topic rclcpp-lifecycle ros2node ament-cmake-gmock ros2component ros2multicast ros2launch ament-cmake-ros ament-index-cpp pluginlib ament-lint-common rclpy ros2srv rosidl-default-generators ros2pkg ament-lint-auto sros2-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
