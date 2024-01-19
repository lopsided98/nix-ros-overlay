
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-rttest";
  version = "0.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/humble/rttest/0.13.0-2.tar.gz";
    name = "0.13.0-2.tar.gz";
    sha256 = "b2fdf2304565bb63bc0ebc636fd763cef703b120457f7238bef8fa029f14c48e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Instrumentation library for real-time performance testing'';
    license = with lib.licenses; [ asl20 ];
  };
}
