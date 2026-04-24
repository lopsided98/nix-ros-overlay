
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rttest";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/rttest/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "f23741e8496d6db5301b52cf6ca1e58c691f0e4b3204a3ea61deece60cff4941";
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
