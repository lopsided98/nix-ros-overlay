
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-humble-tracetools-test";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/humble/tracetools_test/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "78ef19510f297837af388cf9b630d58bc6fcc4b512c52ad01c361894f3d9fe26";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = ''Utilities for tracing-related tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
