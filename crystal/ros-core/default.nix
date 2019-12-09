
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, ament-index-python, ament-cmake, rcl-lifecycle, class-loader, ament-cmake-gmock, rosidl-default-generators, ament-lint-auto, rclcpp-lifecycle, ament-cmake-ros, ament-lint-common, ros2pkg, ros2lifecycle, ros2msg, rclpy, rclcpp, ament-cmake-gtest, common-interfaces, ros2srv, rosidl-default-runtime, ros2topic, ament-cmake-auto, ros2node, ros-environment, ament-index-cpp, ros2run, ros2multicast, ros2param, ros2service, ament-cmake-pytest, ros2launch }:
buildRosPackage {
  pname = "ros-crystal-ros-core";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/crystal/ros_core/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "9a63fb497e726d067691d7876f32675db43300613a56920c77e1d50bd2b6ab16";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pluginlib ament-index-python ament-cmake rcl-lifecycle class-loader ament-cmake-gmock rosidl-default-generators ament-lint-auto rclcpp-lifecycle ament-cmake-ros ament-lint-common ros2pkg ros2lifecycle ros2msg rclpy rclcpp ament-cmake-gtest common-interfaces ros2srv rosidl-default-runtime ros2topic ament-cmake-auto ros2node ament-index-cpp ros-environment ros2run ros2multicast ros2param ros2service ament-cmake-pytest ros2launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
