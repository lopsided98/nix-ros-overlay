
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-tracetools-acceleration";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_acceleration-release/archive/release/rolling/tracetools_acceleration/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "79cae6147e1348fbe46ced09cb993e2ec6ae3f320e1ea7d5da5c3acd7f08197a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''LTTng tracing provider wrapper for ROS 2 packages using hardware acceleration.
    Fork of tracetools to trace hardware acceleration in ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
