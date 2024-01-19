
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing, osrf-testing-tools-cpp, rcl, rcl-action, rclcpp, rclcpp-action, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rclc";
  version = "4.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/humble/rclc/4.0.2-3.tar.gz";
    name = "4.0.2-3.tar.gz";
    sha256 = "a753102be3bd21fe7b601ada8bf2c464c5aafd9d64e98f8da8eba42d328c8942";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces launch-testing osrf-testing-tools-cpp rclcpp rclcpp-action std-msgs test-msgs ];
  propagatedBuildInputs = [ rcl rcl-action rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
