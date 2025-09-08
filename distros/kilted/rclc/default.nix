
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing, osrf-testing-tools-cpp, rcl, rcl-action, rclcpp, rclcpp-action, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-rclc";
  version = "6.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/kilted/rclc/6.2.0-2.tar.gz";
    name = "6.2.0-2.tar.gz";
    sha256 = "c19fccaab7e06cb3ebd06640b8f0e2a283938ecd1cbcf2a9a4b26dd90ea44ac3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces launch-testing osrf-testing-tools-cpp rclcpp rclcpp-action std-msgs test-msgs ];
  propagatedBuildInputs = [ rcl rcl-action rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The ROS client library in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
