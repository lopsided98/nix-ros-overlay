
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, performance-test-fixture, rcl, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-libstatistics-collector";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libstatistics_collector-release/archive/release/kilted/libstatistics_collector/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "010eae56813290ad61cd79eb139034f7d99a9d5a2f0f21ce3c1c107bb45bb054";
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
