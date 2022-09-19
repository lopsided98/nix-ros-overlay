
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcl, rcpputils, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-libstatistics-collector";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libstatistics_collector-release/archive/release/humble/libstatistics_collector/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "2e4d8aae6fe2d3abe5dc2b7a652a98bd37325103091f1609205c40ad544b7861";
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
