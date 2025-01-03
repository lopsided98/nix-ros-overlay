
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, performance-test-fixture, rcl, rcpputils, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-libstatistics-collector";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libstatistics_collector-release/archive/release/humble/libstatistics_collector/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "9990f978a3100df3527edd61617ebc2dedca627a5e31fcb625d7bd36f7a7657b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ builtin-interfaces rcl rcpputils rosidl-default-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "Lightweight aggregation utilities to collect statistics and measure message metrics.";
    license = with lib.licenses; [ asl20 ];
  };
}
