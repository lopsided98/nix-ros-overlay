
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rttest";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/rttest/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "705d03b192b3f1d7de736324c84b07a61af0c86b1658a5a33be8c87019a9ddb5";
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
