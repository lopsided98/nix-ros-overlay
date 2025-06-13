
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-kilted-rcl-lifecycle";
  version = "10.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/kilted/rcl_lifecycle/10.1.0-2.tar.gz";
    name = "10.1.0-2.tar.gz";
    sha256 = "8ff9c683e92426d919311669264d9e9cfe93747b74f786c8773ddca49256d404";
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
