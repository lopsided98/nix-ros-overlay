
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-iron-tracetools-test";
  version = "6.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/iron/tracetools_test/6.3.1-1.tar.gz";
    name = "6.3.1-1.tar.gz";
    sha256 = "2b724e982ca2b2869430bb642f48c54aa0b4fb564a9602327df9306a663ec64d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = ''Utilities for tracing-related tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
