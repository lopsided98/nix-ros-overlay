
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, jupyter, python3Packages, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-foxy-tracetools-analysis";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/tracetools_analysis-release/-/archive/release/foxy/tracetools_analysis/1.0.3-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "19e6106ad2961799bf245d98ca8ba77a9e9eeae5e95116f63467420d02800e25";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ jupyter python3Packages.pandas tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}
