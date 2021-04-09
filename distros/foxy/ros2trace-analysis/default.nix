
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-foxy-ros2trace-analysis";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/tracetools_analysis-release/-/archive/release/foxy/ros2trace_analysis/1.0.3-1/tracetools_analysis-release-release-foxy-ros2trace_analysis-1.0.3-1.tar.gz";
    name = "tracetools_analysis-release-release-foxy-ros2trace_analysis-1.0.3-1.tar.gz";
    sha256 = "4cb6188b451d8fb208353528850b75d5551605615aa9942de7e6a307119b6a88";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace-analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
