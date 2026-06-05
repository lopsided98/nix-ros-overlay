
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-ros2-timer, smacc2, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-atomic-subscribers-performance-test";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_atomic_subscribers_performance_test/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "e50154647fd3cbacd0909f0d7b8683d4f0dea88d62336461d9300b27924c30f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-ros2-timer smacc2 xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_atomic_subscribers_performance_test package";
    license = with lib.licenses; [ asl20 ];
  };
}
