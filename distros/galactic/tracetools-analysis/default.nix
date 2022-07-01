
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, jupyter, python3Packages, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-galactic-tracetools-analysis";
  version = "2.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/galactic/tracetools_analysis/2.0.3-4.tar.gz";
    name = "2.0.3-4.tar.gz";
    sha256 = "57d940923ce99db4f1c45e905811c18f3d4857fc4eb0b86e39d508e912628681";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ jupyter python3Packages.pandas tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}
