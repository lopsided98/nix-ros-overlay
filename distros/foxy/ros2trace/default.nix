
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-foxy-ros2trace";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/-/archive/release/foxy/ros2trace/1.0.5-2/ros2_tracing-release-release-foxy-ros2trace-1.0.5-2.tar.gz";
    name = "ros2_tracing-release-release-foxy-ros2trace-1.0.5-2.tar.gz";
    sha256 = "9cd998d905f4d740bf63d06a6713efb94e58344f75eaafea34a604c8becf6904";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
