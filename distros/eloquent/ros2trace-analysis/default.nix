
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-eloquent-ros2trace-analysis";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/tracetools_analysis-release/repository/archive.tar.gz?ref=release/eloquent/ros2trace_analysis/0.2.2-1";
    name = "archive.tar.gz";
    sha256 = "f3c42eb2fd3f0057255f5a4af0356e0b78e7358c53edef8e90ed45e75f8e904e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
