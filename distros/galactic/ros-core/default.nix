
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, common-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, launch-yaml, pluginlib, rcl-lifecycle, rclcpp, rclcpp-lifecycle, rclpy, ros-environment, ros2cli-common-extensions, ros2launch, rosidl-default-generators, rosidl-default-runtime, sros2, sros2-cmake }:
buildRosPackage {
  pname = "ros-galactic-ros-core";
  version = "0.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/galactic/ros_core/0.9.3-2.tar.gz";
    name = "0.9.3-2.tar.gz";
    sha256 = "438552c09ec8c4456f9e51cdc7e61a67e35f3e084308816df87c166d45be0c55";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-index-cpp ament-index-python ament-lint-auto ament-lint-common class-loader common-interfaces launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros launch-xml launch-yaml pluginlib rcl-lifecycle rclcpp rclcpp-lifecycle rclpy ros-environment ros2cli-common-extensions ros2launch rosidl-default-generators rosidl-default-runtime sros2 sros2-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
