
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-tracetools-acceleration";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_acceleration-release/archive/release/rolling/tracetools_acceleration/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "2be9b91b725c727537802cdd9846ca64726344046587fcfcf469f0e014afa474";
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
