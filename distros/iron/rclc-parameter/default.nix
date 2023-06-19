
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, example-interfaces, osrf-testing-tools-cpp, rcl, rcl-interfaces, rclc, rclcpp, rcutils, rosidl-runtime-c, std-msgs }:
buildRosPackage {
  pname = "ros-iron-rclc-parameter";
  version = "3.0.9-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/iron/rclc_parameter/3.0.9-3.tar.gz";
    name = "3.0.9-3.tar.gz";
    sha256 = "5256b396bf6ad6aad508908a2eaae4d2b0b30d632cf35f4600421c17cdc80071";
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
