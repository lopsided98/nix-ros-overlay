
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch-ros, pkg-config, pythonPackages, rclcpp, std-msgs, std-srvs, tracetools, tracetools-launch, tracetools-read }:
buildRosPackage {
  pname = "ros-dashing-tracetools-test";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/-/archive/release/dashing/tracetools_test/0.2.8-1/ros2_tracing-release-release-dashing-tracetools_test-0.2.8-1.tar.gz";
    name = "ros2_tracing-release-release-dashing-tracetools_test-0.2.8-1.tar.gz";
    sha256 = "f1664d011b343bcae3be8cd5e5fbe26f56cdaaf403cef05ca5ce4ce6171e035d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-ros pythonPackages.pytest tracetools tracetools-launch tracetools-read ];
  propagatedBuildInputs = [ rclcpp std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Testing utilities and tests for the tracetools package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
