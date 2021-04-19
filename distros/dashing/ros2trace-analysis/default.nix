
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-dashing-ros2trace-analysis";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/tracetools_analysis-release/-/archive/release/dashing/ros2trace_analysis/0.2.1-1/tracetools_analysis-release-release-dashing-ros2trace_analysis-0.2.1-1.tar.gz";
    name = "tracetools_analysis-release-release-dashing-ros2trace_analysis-0.2.1-1.tar.gz";
    sha256 = "4e91a60d803ae6ac786d6a364ecee60d67a75deb3bdd0272785286aacc2b0ba1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
