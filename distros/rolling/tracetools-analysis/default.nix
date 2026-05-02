
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-tracetools-analysis";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/rolling/tracetools_analysis/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "4325edb4887cf1f4bd3eebba395528c04686ccdf2bcd9730edfeb3d13988ac4b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.notebook python3Packages.pandas tracetools-read tracetools-trace ];

  meta = {
    description = "Tools for analysing trace data.";
    license = with lib.licenses; [ asl20 ];
  };
}
