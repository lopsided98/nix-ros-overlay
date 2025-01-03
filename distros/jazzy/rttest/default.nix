
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-rttest";
  version = "0.17.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/jazzy/rttest/0.17.0-3.tar.gz";
    name = "0.17.0-3.tar.gz";
    sha256 = "53fdf05378ed76756273b994d7c2ffa04e0485d1eda836cd8839d63f98a45385";
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
