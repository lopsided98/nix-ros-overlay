
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, performance-test-fixture, rcl, rcpputils, rcutils, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-libstatistics-collector";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libstatistics_collector-release/archive/release/rolling/libstatistics_collector/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "5c52ec5ec636ec1492f46b3df3b69207bf09f5b66531b71c2e62f3016e5e70a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcutils rosidl-default-generators rosidl-default-runtime std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl rcpputils statistics-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Lightweight aggregation utilities to collect statistics and measure message metrics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
