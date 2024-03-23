
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, jupyter, python3Packages, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-rolling-tracetools-analysis";
  version = "3.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/rolling/tracetools_analysis/3.0.0-5.tar.gz";
    name = "3.0.0-5.tar.gz";
    sha256 = "4d643da4ac78d36ba0d38d8035c78c5ac68fb9bbbc72620c2e975a4f688577f9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ jupyter python3Packages.pandas tracetools-read ];

  meta = {
    description = "Tools for analysing trace data.";
    license = with lib.licenses; [ asl20 ];
  };
}
