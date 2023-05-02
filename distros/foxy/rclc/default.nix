
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing, osrf-testing-tools-cpp, rcl, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/foxy/rclc/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "6bad484cfb92acc34bb4ae10b0b00db7418239c513053167dbc9178dcb1cd5af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces launch-testing osrf-testing-tools-cpp std-msgs test-msgs ];
  propagatedBuildInputs = [ rcl rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
