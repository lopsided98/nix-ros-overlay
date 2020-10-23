
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-eloquent-tracetools";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/tracetools/0.2.12-1";
    name = "archive.tar.gz";
    sha256 = "09af757a97c6608849fbd211f17d50718a73a27c34dc8351669e48673b4786e5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
