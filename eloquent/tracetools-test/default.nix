
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tracetools-read, std-srvs, std-msgs, launch-ros, ament-lint-common, ament-cmake, pythonPackages, tracetools-launch, tracetools, ament-cmake-pytest, pkg-config, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-tracetools-test";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/tracetools_test/0.2.10-1";
    name = "archive.tar.gz";
    sha256 = "3b8d575b80a4515b7ec4ff46d1d8edae096950ba400faafbfdf72ac5a5da6619";
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
