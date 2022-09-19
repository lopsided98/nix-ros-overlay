
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-humble-rcl-lifecycle";
  version = "5.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/humble/rcl_lifecycle/5.3.2-1.tar.gz";
    name = "5.3.2-1.tar.gz";
    sha256 = "4b1be8f45bde2e59fcc3071cb7a1bb022d1c0ea5efb856a9e0ef06138bbf40e7";
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
