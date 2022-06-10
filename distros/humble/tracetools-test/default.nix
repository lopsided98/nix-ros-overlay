
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-launch, tracetools-read, tracetools-trace }:
buildRosPackage {
  pname = "ros-humble-tracetools-test";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/humble/tracetools_test/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "9d38a7c7f4e5f84c7be346d3adb1134b8cc540bb5275347cd0e06d140a903c1b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-launch tracetools-read tracetools-trace ];

  meta = {
    description = ''Utilities for tracing-related tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
