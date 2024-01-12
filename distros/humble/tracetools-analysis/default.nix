
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, jupyter, python3Packages, pythonPackages, tracetools-read }:
buildRosPackage {
  pname = "ros-humble-tracetools-analysis";
  version = "3.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/humble/tracetools_analysis/3.0.0-4.tar.gz";
    name = "3.0.0-4.tar.gz";
    sha256 = "f2c261ab9e97233d32ab2c6654fca868fae3ff3a0afb3f3098834816023e4f45";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ jupyter python3Packages.pandas tracetools-read ];

  meta = {
    description = ''Tools for analysing trace data.'';
    license = with lib.licenses; [ asl20 ];
  };
}
