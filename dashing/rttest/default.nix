
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rttest";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/dashing/rttest/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "191e06f885ea30fbb8d1a68d591caa41f53548d86ee6a34c639fd96a24d5d9fc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Instrumentation library for real-time performance testing'';
    license = with lib.licenses; [ asl20 ];
  };
}
