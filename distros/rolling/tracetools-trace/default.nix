
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttngpy, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-tracetools-trace";
  version = "8.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_trace/8.0.0-1.tar.gz";
    name = "8.0.0-1.tar.gz";
    sha256 = "f3e03387c819ea7f855e0d2dbe8766a11f723c1bb00e9ef1875130ea09a4bb3d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lttngpy ];

  meta = {
    description = ''Tools for setting up tracing sessions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
