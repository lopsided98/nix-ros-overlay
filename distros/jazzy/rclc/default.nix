
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing, osrf-testing-tools-cpp, rcl, rcl-action, rclcpp, rclcpp-action, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclc";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/jazzy/rclc/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "966745e68bb0b8c0556e4719404f5343747d96269fb078f7b1b18bc86eda6193";
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
