
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-kilted-tracetools-test";
  version = "8.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/tracetools_test/8.6.1-1.tar.gz";
    name = "8.6.1-1.tar.gz";
    sha256 = "2f19e4ffc16ae489bc45b64e3e40124d5a3adaab57574817b4b8a792b059d64a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = "Utilities for tracing-related tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
