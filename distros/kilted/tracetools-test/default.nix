
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-kilted-tracetools-test";
  version = "8.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/tracetools_test/8.6.0-2.tar.gz";
    name = "8.6.0-2.tar.gz";
    sha256 = "abec2814cefa7f8de452ddf48fd8433c455cde5c3a302fbf8007730088ff4d2b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = "Utilities for tracing-related tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
