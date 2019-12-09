
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2action, ros2interface, pluginlib, ament-index-python, ament-cmake, sros2, rcl-lifecycle, class-loader, ament-cmake-gmock, rosidl-default-generators, ament-lint-auto, rclcpp-lifecycle, ros2doctor, ament-cmake-ros, ament-lint-common, ros2component, ros2pkg, ros2lifecycle, ros2msg, rclpy, rclcpp, ament-cmake-gtest, common-interfaces, rosidl-default-runtime, ros2srv, ros2topic, sros2-cmake, ament-cmake-auto, ros2node, ament-index-cpp, ros-environment, ros2run, ros2multicast, ros2param, ros2service, ament-cmake-pytest, ros2launch }:
buildRosPackage {
  pname = "ros-eloquent-ros-core";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/eloquent/ros_core/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "bb0c6fcd4a6f0dc446ad948912e1f1d1feae5c1c919bcac92fc90bfde9aabacf";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ros2action ros2interface pluginlib ament-cmake sros2 rcl-lifecycle class-loader ament-cmake-gmock rosidl-default-generators ament-lint-auto rclcpp-lifecycle ros2doctor ament-cmake-ros ament-lint-common ros2component ros2pkg ros2lifecycle ros2msg rclpy rclcpp ament-cmake-gtest common-interfaces rosidl-default-runtime ros2srv ros2topic sros2-cmake ament-cmake-auto ros2node ament-index-cpp ros-environment ros2run ros2launch ros2multicast ros2param ros2service ament-cmake-pytest ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
