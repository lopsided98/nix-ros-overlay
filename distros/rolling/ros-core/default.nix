
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, common-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, launch-yaml, pluginlib, rcl-lifecycle, rclcpp, rclcpp-action, rclcpp-lifecycle, rclpy, ros-environment, ros2cli-common-extensions, ros2launch, rosidl-default-generators, rosidl-default-runtime, sros2, sros2-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros-core";
  version = "0.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/ros_core/0.13.0-2.tar.gz";
    name = "0.13.0-2.tar.gz";
    sha256 = "e6fb11a2a2b99645890849a11bfe87e7217a654a63785bd1092afec16b4a7058";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-index-cpp ament-index-python ament-lint-auto ament-lint-common class-loader common-interfaces launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros launch-xml launch-yaml pluginlib rcl-lifecycle rclcpp rclcpp-action rclcpp-lifecycle rclpy ros-environment ros2cli-common-extensions ros2launch rosidl-default-generators rosidl-default-runtime sros2 sros2-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.";
    license = with lib.licenses; [ asl20 ];
  };
}
