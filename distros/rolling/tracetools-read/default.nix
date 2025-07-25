
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, babeltrace, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-tracetools-read";
  version = "8.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_read/8.8.0-1.tar.gz";
    name = "8.8.0-1.tar.gz";
    sha256 = "32db27b3dacd5588b97212f53cc7401411462a2de768bf8d015984bb6e061344";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ babeltrace ];

  meta = {
    description = "Tools for reading traces.";
    license = with lib.licenses; [ asl20 ];
  };
}
