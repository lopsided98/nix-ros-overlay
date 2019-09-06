
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-cmake-pytest, tracetools-launch, ament-cmake, launch-ros, ament-lint-common, tracetools, pythonPackages, pkg-config, rclcpp, std-msgs, ament-lint-auto, tracetools-read }:
buildRosPackage rec {
  pname = "ros-dashing-tracetools-test";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/dashing/tracetools_test/0.2.0-1";
    name = "archive.tar.gz";
    sha256 = "8048626afde64a62ab4a2c067174461e5807c0350a781d74eb996e35e20490d1";
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
