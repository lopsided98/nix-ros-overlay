
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-cmake-pytest, tracetools-launch, ament-cmake, launch-ros, ament-lint-common, tracetools, pythonPackages, pkg-config, rclcpp, std-msgs, ament-lint-auto, tracetools-read }:
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
  checkInputs = [ ament-cmake-pytest tracetools-launch pythonPackages.pytest launch-ros ament-lint-common tracetools ament-lint-auto tracetools-read ];
  propagatedBuildInputs = [ std-msgs std-srvs rclcpp ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Testing utilities and tests for the tracetools package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
