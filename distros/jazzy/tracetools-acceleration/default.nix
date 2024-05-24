
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-acceleration";
  version = "0.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_acceleration-release/archive/release/jazzy/tracetools_acceleration/0.4.1-4.tar.gz";
    name = "0.4.1-4.tar.gz";
    sha256 = "e0dbb32eae83af920ad8acdeeef009bcfcb714ae7d3c90fa31220e9b563cab1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = "LTTng tracing provider wrapper for ROS 2 packages using hardware acceleration.
    Fork of tracetools to trace hardware acceleration in ROS 2.";
    license = with lib.licenses; [ asl20 ];
  };
}
