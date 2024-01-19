
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, common-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, launch-yaml, pluginlib, rcl-lifecycle, rclcpp, rclcpp-action, rclcpp-lifecycle, rclpy, ros-environment, ros2cli-common-extensions, ros2launch, rosidl-default-generators, rosidl-default-runtime, sros2, sros2-cmake }:
buildRosPackage {
  pname = "ros-humble-ros-core";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/humble/ros_core/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "ac39d23b2bc3c3053c7ab98bb5fbb86038593a9bbda19300715970643612f0b4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-index-cpp ament-index-python ament-lint-auto ament-lint-common class-loader common-interfaces launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros launch-xml launch-yaml pluginlib rcl-lifecycle rclcpp rclcpp-action rclcpp-lifecycle rclpy ros-environment ros2cli-common-extensions ros2launch rosidl-default-generators rosidl-default-runtime sros2 sros2-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
