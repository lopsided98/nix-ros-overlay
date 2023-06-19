
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-ros2trace";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/ros2trace/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "c35e4c8a101d83a30d690354d5c0235757adcdd532ca7942c998396242306492";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
