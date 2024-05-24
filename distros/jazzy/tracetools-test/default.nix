
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-test";
  version = "8.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_test/8.2.0-2.tar.gz";
    name = "8.2.0-2.tar.gz";
    sha256 = "82ba5f84655678859a608b62274ea64580b83254d613b25733f40cebcde6a272";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = "Utilities for tracing-related tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
