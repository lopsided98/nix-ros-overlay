
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, ament-copyright, tracetools-read }:
buildRosPackage {
  pname = "ros-dashing-tracetools-analysis";
  version = "0.1.1-r1";

  src = fetchurl {
    url = https://gitlab.com/micro-ROS/ros_tracing/tracetools_analysis-release/repository/archive.tar.gz?ref=release/dashing/tracetools_analysis/0.1.1-1;
    sha256 = "b1de74490d4b317e9b0b43fa823757ea9234da46be5d4c23cacaebb7ac48f7eb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}
