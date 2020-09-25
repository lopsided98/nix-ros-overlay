
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-mypy, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch-ros, pkg-config, python3Packages, pythonPackages, rclcpp, std-msgs, std-srvs, tracetools, tracetools-launch, tracetools-read }:
buildRosPackage {
  pname = "ros-foxy-tracetools-test";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/foxy/tracetools_test/1.0.4-1";
    name = "archive.tar.gz";
    sha256 = "755824ceeb41282fadfbb8d1c347c43987674950c9253193294e067626d880dd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-mypy ament-cmake-pytest ament-lint-auto ament-lint-common launch-ros python3Packages.pytestcov pythonPackages.pytest tracetools tracetools-launch tracetools-read ];
  propagatedBuildInputs = [ rclcpp std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Testing utilities and tests for the tracetools package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
