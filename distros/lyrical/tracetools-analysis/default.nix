
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-lyrical-tracetools-analysis";
  version = "3.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/lyrical/tracetools_analysis/3.1.0-3.tar.gz";
    name = "3.1.0-3.tar.gz";
    sha256 = "92eedb9eee3e241afabc37d4105131e3adc4134eb6f3211e91219a6d93dd5057";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.notebook python3Packages.pandas tracetools-read tracetools-trace ];

  meta = {
    description = "Tools for analysing trace data.";
    license = with lib.licenses; [ asl20 ];
  };
}
