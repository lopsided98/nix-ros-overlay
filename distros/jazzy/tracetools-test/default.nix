
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-test";
  version = "8.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_test/8.2.3-1.tar.gz";
    name = "8.2.3-1.tar.gz";
    sha256 = "63e6cde2f945815af55b1576f96558de3b7d120d5516daa524c2bb2eed02d4d1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = "Utilities for tracing-related tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
