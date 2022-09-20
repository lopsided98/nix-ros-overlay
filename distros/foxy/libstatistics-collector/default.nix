
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl, rcpputils, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-libstatistics-collector";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-tooling/libstatistics_collector-release/archive/release/foxy/libstatistics_collector/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "4c2c522acb68d2d0bab19dccbf33d40b878725d32b818911d172b0a9b7500174";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcl rcpputils rosidl-default-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Lightweight aggregation utilities to collect statistics and measure message metrics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
