
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2action, pluginlib, ament-index-python, ament-cmake, sros2, rcl-lifecycle, class-loader, ament-cmake-gmock, rosidl-default-generators, ament-lint-auto, rclcpp-lifecycle, ament-cmake-ros, ament-lint-common, ros2component, ros2pkg, ros2lifecycle, ros2msg, rclpy, rclcpp, ament-cmake-gtest, common-interfaces, rosidl-default-runtime, ros2srv, ros2topic, sros2-cmake, ament-cmake-auto, ros2node, ament-index-cpp, ros-environment, ros2run, ros2multicast, ros2param, ros2service, ament-cmake-pytest, ros2launch }:
buildRosPackage {
  pname = "ros-dashing-ros-core";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/dashing/ros_core/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "df67fe155b7c4889a180851a9c45ff571dfd74d3fa360e98079ed03366791792";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ros2action pluginlib ament-cmake sros2 rcl-lifecycle class-loader ament-cmake-gmock rosidl-default-generators ament-lint-auto rclcpp-lifecycle ament-cmake-ros ament-lint-common ros2component ros2pkg ros2lifecycle ros2msg rclpy rclcpp ament-cmake-gtest common-interfaces rosidl-default-runtime ros2srv ros2topic sros2-cmake ament-cmake-auto ros2node ament-index-cpp ros-environment ros2run ros2launch ros2multicast ros2param ros2service ament-cmake-pytest ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
