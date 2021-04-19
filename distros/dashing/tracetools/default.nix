
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-dashing-tracetools";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/-/archive/release/dashing/tracetools/0.2.8-1/ros2_tracing-release-release-dashing-tracetools-0.2.8-1.tar.gz";
    name = "ros2_tracing-release-release-dashing-tracetools-0.2.8-1.tar.gz";
    sha256 = "e3ea4ca3c544e46a26a4a2befc7c16439e7b477cedea5d7cba840a53e70cc577";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
