
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-tracetools";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/foxy/tracetools/1.0.5-2";
    name = "archive.tar.gz";
    sha256 = "312d1bdaa44472813977e5a79b19fa96655020905df4f689aeff243192051043";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
