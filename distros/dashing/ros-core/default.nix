
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, common-interfaces, pluginlib, rcl-lifecycle, rclcpp, rclcpp-lifecycle, rclpy, ros-environment, ros2action, ros2component, ros2launch, ros2lifecycle, ros2msg, ros2multicast, ros2node, ros2param, ros2pkg, ros2run, ros2service, ros2srv, ros2topic, rosidl-default-generators, rosidl-default-runtime, sros2, sros2-cmake }:
buildRosPackage {
  pname = "ros-dashing-ros-core";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/dashing/ros_core/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "203f9e97cb8211eff2b2780f3b9c0d30134436b33b61bdf55d815f610f93bba2";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-index-cpp ament-index-python ament-lint-auto ament-lint-common class-loader common-interfaces pluginlib rcl-lifecycle rclcpp rclcpp-lifecycle rclpy ros-environment ros2action ros2component ros2launch ros2lifecycle ros2msg ros2multicast ros2node ros2param ros2pkg ros2run ros2service ros2srv ros2topic rosidl-default-generators rosidl-default-runtime sros2 sros2-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
