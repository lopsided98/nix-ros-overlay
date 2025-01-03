
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, example-interfaces, osrf-testing-tools-cpp, rcl, rcl-interfaces, rclc, rclcpp, rcutils, rosidl-runtime-c, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclc-parameter";
  version = "6.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/jazzy/rclc_parameter/6.1.0-3.tar.gz";
    name = "6.1.0-3.tar.gz";
    sha256 = "daae11c3843febc3b3b4105e59578ede6a2479a084dcfc4d8488e7e3e9b50a8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces osrf-testing-tools-cpp rclcpp std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl rcl-interfaces rclc rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Parameter server implementation for micro-ROS nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
