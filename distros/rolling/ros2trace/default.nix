
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-ros2trace";
  version = "6.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/ros2trace/6.4.0-1.tar.gz";
    name = "6.4.0-1.tar.gz";
    sha256 = "261bb216e12c5895088f5d083200d2f0a34b41d80063c5d2882bae9771ed37f2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
