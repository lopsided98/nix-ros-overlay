
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcl-action";
  version = "9.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl_action/9.1.0-2.tar.gz";
    name = "9.1.0-2.tar.gz";
    sha256 = "8f5922d69cb8c26d2df322ea70fec31834977cbe5efcac9eae33d4b32bc2393d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcutils rmw rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based ROS action implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
