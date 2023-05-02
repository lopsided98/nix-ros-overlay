
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, example-interfaces, osrf-testing-tools-cpp, rcl, rcl-interfaces, rclc, rclcpp, rcutils, rosidl-runtime-c, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc-parameter";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/foxy/rclc_parameter/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "9fa9cf518ac60018453a97dcb465d59ea8f86478c90ac8ebf6d7094c30f91e89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces osrf-testing-tools-cpp rclcpp std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl rcl-interfaces rclc rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parameter server implementation for micro-ROS nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
