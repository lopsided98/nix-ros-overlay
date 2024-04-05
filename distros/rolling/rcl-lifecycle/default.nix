
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rcl-lifecycle";
  version = "9.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl_lifecycle/9.2.0-1.tar.gz";
    name = "9.2.0-1.tar.gz";
    sha256 = "12c4d190751dd5203756c296fb6dfa60a3c4785e162e016127b70c37f48489e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl rcutils rmw rosidl-runtime-c tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Package containing a C-based lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
