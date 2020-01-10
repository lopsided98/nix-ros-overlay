
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-eloquent-rttest";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/eloquent/rttest/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "3bb80db6ed3a57059452ba31d0e96fd23ac2b294ba39a5dbe34dce92a51808e0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Instrumentation library for real-time performance testing'';
    license = with lib.licenses; [ asl20 ];
  };
}
