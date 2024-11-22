
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-analysis";
  version = "3.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/jazzy/tracetools_analysis/3.0.0-6.tar.gz";
    name = "3.0.0-6.tar.gz";
    sha256 = "890e16948c987a9cb68e7df087c8ff541ca2fea91fc4faada01b633356bd00c2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.notebook python3Packages.pandas tracetools-read ];

  meta = {
    description = "Tools for analysing trace data.";
    license = with lib.licenses; [ asl20 ];
  };
}
