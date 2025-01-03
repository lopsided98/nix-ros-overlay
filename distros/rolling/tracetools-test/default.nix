
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-tracetools-test";
  version = "8.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_test/8.5.0-1.tar.gz";
    name = "8.5.0-1.tar.gz";
    sha256 = "979fcf605314c70b2fa7307f4ef4718795f1a566116c00d9c1ba224b2b7cef74";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = "Utilities for tracing-related tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
