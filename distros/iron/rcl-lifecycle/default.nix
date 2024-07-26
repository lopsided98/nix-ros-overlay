
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-iron-rcl-lifecycle";
  version = "6.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/iron/rcl_lifecycle/6.0.6-1.tar.gz";
    name = "6.0.6-1.tar.gz";
    sha256 = "e7e925864bcb16b18a8e673994500d07c32926bf1ec221888f34e9ce278079f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl rcutils rmw rosidl-runtime-c tracetools ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Package containing a C-based lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
