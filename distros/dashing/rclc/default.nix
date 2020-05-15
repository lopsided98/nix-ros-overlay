
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclc";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/dashing/rclc/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "9161f5c94bf013a5bb7bf235d893309754f49cd7be55ec95b1154033f24c98ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp std-msgs ];
  propagatedBuildInputs = [ rcl rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
