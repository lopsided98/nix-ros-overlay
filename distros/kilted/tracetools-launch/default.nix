
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, tracetools-trace }:
buildRosPackage {
  pname = "ros-kilted-tracetools-launch";
  version = "8.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/tracetools_launch/8.6.0-2.tar.gz";
    name = "8.6.0-2.tar.gz";
    sha256 = "569a176393e78c24da13dee7b6f26996a41c5d8f793b8781886c3ca7b4f9e191";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = "Launch integration for tracing.";
    license = with lib.licenses; [ asl20 ];
  };
}
