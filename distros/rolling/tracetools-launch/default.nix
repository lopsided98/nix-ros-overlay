
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-tracetools-launch";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_launch/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "21c94dfa663000b08a56e5c4d078564da51b508f5175aebb1d70504d53cdcd7d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = ''Launch integration for tracing.'';
    license = with lib.licenses; [ asl20 ];
  };
}
