
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-ros2-timer, smacc2, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-atomic-performance-trace-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_atomic_performance_trace_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "c1c60efa60c4a1a0d77627abc295fdf091ef0deafb0f0c31885e4b401140069d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-ros2-timer smacc2 xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_atomic_performance_trace_1 package";
    license = with lib.licenses; [ asl20 ];
  };
}
