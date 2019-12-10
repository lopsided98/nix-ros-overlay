
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-eloquent-tracetools";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/tracetools/0.2.10-1";
    name = "archive.tar.gz";
    sha256 = "c7b1e68bf052ea98755782d49e90497a36e26a1dfc62ce8340e3703087b6851b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
