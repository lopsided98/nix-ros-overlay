
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-tracetools-acceleration";
  version = "0.4.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_acceleration-release/archive/release/lyrical/tracetools_acceleration/0.4.1-5.tar.gz";
    name = "0.4.1-5.tar.gz";
    sha256 = "9b5f1a66d460bcf2719c62d1da342c055daf2c6e99af8f97e6d73be97d9def29";
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
