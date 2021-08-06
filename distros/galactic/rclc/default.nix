
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing, osrf-testing-tools-cpp, rcl, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclc";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/galactic/rclc/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "e366a239f16ed2c18057bebeb7a230befff7d8390931c87d34f91f84599be9a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces launch-testing osrf-testing-tools-cpp std-msgs test-msgs ];
  propagatedBuildInputs = [ rcl rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
