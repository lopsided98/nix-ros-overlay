
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch-ros, pkg-config, pythonPackages, rclcpp, std-msgs, std-srvs, tracetools, tracetools-launch, tracetools-read }:
buildRosPackage {
  pname = "ros-eloquent-tracetools-test";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/tracetools_test/0.2.10-1";
    name = "archive.tar.gz";
    sha256 = "3b8d575b80a4515b7ec4ff46d1d8edae096950ba400faafbfdf72ac5a5da6619";
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
