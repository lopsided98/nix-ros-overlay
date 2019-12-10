
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-rttest";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/crystal/rttest/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "16271ef178a15732177f981b5d3e9e15ac1a7d71aea70a1789cd900e5706e5c4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Instrumentation library for real-time performance testing'';
    license = with lib.licenses; [ asl20 ];
  };
}
