
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, performance-test-fixture, rcl, rcpputils, rcutils, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-libstatistics-collector";
  version = "1.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libstatistics_collector-release/archive/release/iron/libstatistics_collector/1.5.1-2.tar.gz";
    name = "1.5.1-2.tar.gz";
    sha256 = "f735cbfd9c8d2c05543c7f12eee62d5935933d4031890a3a8add6b1fd27dffee";
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
