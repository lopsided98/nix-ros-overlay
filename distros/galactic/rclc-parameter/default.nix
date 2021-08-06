
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, example-interfaces, osrf-testing-tools-cpp, rcl, rcl-interfaces, rclc, rclcpp, rcutils, rosidl-runtime-c, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclc-parameter";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/galactic/rclc_parameter/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "f317ae6ac85fba3b4959cb6b39a7d6b0880ed2c23692ddb2bb1677d3318405a3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces osrf-testing-tools-cpp rclcpp std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl rcl-interfaces rclc rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parameter server implementation for micro-ROS nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
