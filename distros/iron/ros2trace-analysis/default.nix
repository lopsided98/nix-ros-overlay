
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-iron-ros2trace-analysis";
  version = "3.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/iron/ros2trace_analysis/3.0.0-5.tar.gz";
    name = "3.0.0-5.tar.gz";
    sha256 = "b19c400cfef6db80dd2f0b7f0d12d04996066251dab3a6f653c3d0b3180b93d7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace-analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
