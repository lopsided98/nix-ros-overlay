
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, pkg-config, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-tracetools";
  version = "0.2.0-r1";

  src = fetchurl {
    url = https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/dashing/tracetools/0.2.0-1;
    sha256 = "972d5b1ee90eb336cc5a01154859c3dda9e36a0bc42f34610ba216c741ebb9f9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ pkg-config ament-cmake-ros ];

  meta = {
    description = ''Tracing wrapper for ROS 2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
