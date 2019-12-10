
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-eloquent-tracetools-analysis";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/tracetools_analysis-release/repository/archive.tar.gz?ref=release/eloquent/tracetools_analysis/0.2.2-1";
    name = "archive.tar.gz";
    sha256 = "adbf0349e08560ab14536833e57bdec0d6ee1a39fa6da7e2b88de2fadd594ec2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}
