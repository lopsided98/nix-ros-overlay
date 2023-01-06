
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, jupyter, python3Packages, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-rolling-tracetools-analysis";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/rolling/tracetools_analysis/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "acadde279f90147944b11c8a336b4a4a799c8d6ef90413e873bdf10910bfbab6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ jupyter python3Packages.pandas tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}
