
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-foxy-rcl-lifecycle";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/foxy/rcl_lifecycle/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "a7e4aee36582843f294d0c8babf36967526b58f720d22f3fcf96badeccc9f433";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl rcutils rmw rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
