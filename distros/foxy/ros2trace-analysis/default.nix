
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-foxy-ros2trace-analysis";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/tracetools_analysis-release/repository/archive.tar.gz?ref=release/foxy/ros2trace_analysis/1.0.1-1";
    name = "archive.tar.gz";
    sha256 = "98ac881b1be3b0b0d8077ceb9fd908098506c602baff404a73e4f788a905869c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace-analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
