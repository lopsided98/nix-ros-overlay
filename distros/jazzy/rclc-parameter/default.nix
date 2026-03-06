
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, example-interfaces, osrf-testing-tools-cpp, rcl, rcl-interfaces, rclc, rclcpp, rcutils, rosidl-runtime-c, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rclc-parameter";
  version = "6.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/jazzy/rclc_parameter/6.1.2-1.tar.gz";
    name = "6.1.2-1.tar.gz";
    sha256 = "0c0417b34510879f3e05d3af3c36a5144adca610ed5cc9dcd455a9ec3bbd1c07";
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
