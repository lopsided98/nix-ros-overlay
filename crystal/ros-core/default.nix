
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, common-interfaces, ros-environment, ros2lifecycle, ros2msg, ament-cmake, rcl-lifecycle, class-loader, ament-cmake-auto, ros2param, rosidl-default-runtime, ros2service, ament-cmake-pytest, ament-cmake-gtest, rclcpp, ament-index-python, ros2run, ros2topic, ros2node, rclcpp-lifecycle, ament-cmake-gmock, ros2multicast, ros2launch, ament-index-cpp, ament-cmake-ros, pluginlib, ament-lint-common, rclpy, ros2srv, rosidl-default-generators, ros2pkg, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ros-core";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/crystal/ros_core/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "9a63fb497e726d067691d7876f32675db43300613a56920c77e1d50bd2b6ab16";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ common-interfaces ros-environment ros2lifecycle ros2msg ament-cmake rcl-lifecycle class-loader ament-cmake-auto ros2param rosidl-default-runtime ros2service ament-cmake-pytest ament-cmake-gtest rclcpp ament-index-python ros2run ros2topic ros2node rclcpp-lifecycle ament-cmake-gmock ros2multicast ros2launch ament-cmake-ros ament-index-cpp pluginlib ament-lint-common rclpy ros2srv rosidl-default-generators ros2pkg ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
