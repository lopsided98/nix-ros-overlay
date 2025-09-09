
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-kilted-rcl-lifecycle";
  version = "10.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/kilted/rcl_lifecycle/10.1.1-1.tar.gz";
    name = "10.1.1-1.tar.gz";
    sha256 = "6c358a6d45181a40f2db9e644128c9e4cd898fab2ba942393c478c2612fb880a";
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
