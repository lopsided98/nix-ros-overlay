
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, pkg-config, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-tracetools";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/dashing/tracetools/0.2.8-1";
    name = "archive.tar.gz";
    sha256 = "5ccad4d10ecd2ebe25e0d1d8f1de0aae46d6285b2fef0cc7e7a32a4c354d8724";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ pkg-config ament-cmake-ros ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
