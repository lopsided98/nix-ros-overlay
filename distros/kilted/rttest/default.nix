
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-rttest";
  version = "0.18.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/kilted/rttest/0.18.3-1.tar.gz";
    name = "0.18.3-1.tar.gz";
    sha256 = "c6f18706310a022f10d394e73afcaa254e146bff0a5e6db87084b2c6f32c656a";
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
