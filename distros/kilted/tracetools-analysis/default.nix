
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-kilted-tracetools-analysis";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/kilted/tracetools_analysis/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "77e839e7a3d700785c371ec373cf21c5e4080911494a4ebb4ec5e36426335ef4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.notebook python3Packages.pandas tracetools-read tracetools-trace ];

  meta = {
    description = "Tools for analysing trace data.";
    license = with lib.licenses; [ asl20 ];
  };
}
