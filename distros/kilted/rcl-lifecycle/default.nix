
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-kilted-rcl-lifecycle";
  version = "10.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/kilted/rcl_lifecycle/10.1.4-1.tar.gz";
    name = "10.1.4-1.tar.gz";
    sha256 = "6077a7b325435733b0de969090b952418a4cff63ed378a57186e095713910eb4";
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
