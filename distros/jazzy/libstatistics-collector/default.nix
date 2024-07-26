
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, performance-test-fixture, rcl, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-libstatistics-collector";
  version = "1.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libstatistics_collector-release/archive/release/jazzy/libstatistics_collector/1.7.3-1.tar.gz";
    name = "1.7.3-1.tar.gz";
    sha256 = "d493fe9ee5204d360fe5de339f22d3dcb0d91fde7f8060beade1d93fede62234";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcutils rosidl-default-generators rosidl-default-runtime std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl rcpputils rmw statistics-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Lightweight aggregation utilities to collect statistics and measure message metrics.";
    license = with lib.licenses; [ asl20 ];
  };
}
