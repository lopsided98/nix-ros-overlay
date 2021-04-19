
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-dashing-tracetools-analysis";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/tracetools_analysis-release/-/archive/release/dashing/tracetools_analysis/0.2.1-1/tracetools_analysis-release-release-dashing-tracetools_analysis-0.2.1-1.tar.gz";
    name = "tracetools_analysis-release-release-dashing-tracetools_analysis-0.2.1-1.tar.gz";
    sha256 = "08617ad7569327399412dd3eaa8c7a8f81ed55625bab3a2c689d018ba160e2bb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}
