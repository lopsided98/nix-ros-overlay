
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, common-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, launch-yaml, pluginlib, rcl-lifecycle, rclcpp, rclcpp-lifecycle, rclpy, ros-environment, ros2action, ros2component, ros2doctor, ros2interface, ros2launch, ros2lifecycle, ros2multicast, ros2node, ros2param, ros2pkg, ros2run, ros2service, ros2topic, rosidl-default-generators, rosidl-default-runtime, sros2, sros2-cmake }:
buildRosPackage {
  pname = "ros-foxy-ros-core";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/foxy/ros_core/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "9ed6646dd29039eae6e11622bd07a88457e628f46526186b6359101752bf212c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-index-cpp ament-index-python ament-lint-auto ament-lint-common class-loader common-interfaces launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros launch-xml launch-yaml pluginlib rcl-lifecycle rclcpp rclcpp-lifecycle rclpy ros-environment ros2action ros2component ros2doctor ros2interface ros2launch ros2lifecycle ros2multicast ros2node ros2param ros2pkg ros2run ros2service ros2topic rosidl-default-generators rosidl-default-runtime sros2 sros2-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
