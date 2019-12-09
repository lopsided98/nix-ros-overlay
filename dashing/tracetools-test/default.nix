
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tracetools-read, std-srvs, std-msgs, launch-ros, ament-lint-common, ament-cmake, pythonPackages, tracetools-launch, tracetools, ament-cmake-pytest, pkg-config, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-tracetools-test";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/dashing/tracetools_test/0.2.8-1";
    name = "archive.tar.gz";
    sha256 = "f1664d011b343bcae3be8cd5e5fbe26f56cdaaf403cef05ca5ce4ce6171e035d";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs std-srvs rclcpp ];
  checkInputs = [ tracetools-read launch-ros ament-lint-common tracetools ament-cmake-pytest tracetools-launch pythonPackages.pytest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs std-srvs rclcpp ];
  nativeBuildInputs = [ pkg-config ament-cmake ];

  meta = {
    description = ''Testing utilities and tests for the tracetools package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
