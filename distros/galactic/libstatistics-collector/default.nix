
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl, rcpputils, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-libstatistics-collector";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libstatistics_collector-release/archive/release/galactic/libstatistics_collector/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "6284d61d302e63e118c53ca206be56a742b4488ae6e0a8d3c868013d94ae9412";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ rcl rcpputils rosidl-default-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Lightweight aggregation utilities to collect statistics and measure message metrics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
