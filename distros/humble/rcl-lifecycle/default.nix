
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-humble-rcl-lifecycle";
  version = "5.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/humble/rcl_lifecycle/5.3.3-1.tar.gz";
    name = "5.3.3-1.tar.gz";
    sha256 = "e3e4c3c80cdce91c1cdacb154e1b0103cd0f3ab28141ce78c0361566f855d0e7";
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
