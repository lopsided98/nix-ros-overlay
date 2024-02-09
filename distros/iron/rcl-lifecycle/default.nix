
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-iron-rcl-lifecycle";
  version = "6.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/iron/rcl_lifecycle/6.0.5-1.tar.gz";
    name = "6.0.5-1.tar.gz";
    sha256 = "0c3126d7d6a1e0c736e9131426af4c5cbb1c7bc697b8c6c6055626fc4a5979a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl rcutils rmw rosidl-runtime-c tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
