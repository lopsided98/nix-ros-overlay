
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-rttest";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/lyrical/rttest/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "2d96edd4ff022320b4d849c2c2b3f07bb33c4daf798e84773756cbff2581f059";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Instrumentation library for real-time performance testing";
    license = with lib.licenses; [ asl20 ];
  };
}
