
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, example-interfaces, osrf-testing-tools-cpp, rcl, rcl-interfaces, rclc, rclcpp, rcutils, rosidl-runtime-c, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc-parameter";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/foxy/rclc_parameter/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c6da2727f71faa465d32fb16a35d58622f6c6fedc873614b3f61054cb7c89951";
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
