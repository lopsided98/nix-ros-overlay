
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rttest";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_support-release/archive/release/rolling/rttest/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "4d2b1dc75c4cd90345577fe01230d435925009215be129a8d173dcb889abfc89";
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
