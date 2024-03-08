
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rttest";
  version = "0.17.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/rttest/0.17.0-2.tar.gz";
    name = "0.17.0-2.tar.gz";
    sha256 = "a7c04820701c1b584477ba9f706c7da9283d38dfc80db05f4daa4b878e3af8c1";
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
