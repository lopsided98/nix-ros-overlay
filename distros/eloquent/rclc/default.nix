
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, osrf-testing-tools-cpp, rcl, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclc";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/eloquent/rclc/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "c6dafa6048e2b19cdd521e5328564438b8d4031cf8ce9cdf3f0565074a1d6bbc";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing osrf-testing-tools-cpp std-msgs ];
  propagatedBuildInputs = [ rcl rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
