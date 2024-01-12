
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-iron-tracetools-acceleration";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_acceleration-release/archive/release/iron/tracetools_acceleration/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "b594902f8144b18f1f847522ac28f66fb432796282ab26b2c8324c305d980b9a";
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
