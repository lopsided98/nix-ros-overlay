
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-tracetools-launch";
  version = "8.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_launch/8.0.0-2.tar.gz";
    name = "8.0.0-2.tar.gz";
    sha256 = "f50264d8e72a32ea304890caf6eaac127ca3529821a155b78d3dd9c17bb928ad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = "Launch integration for tracing.";
    license = with lib.licenses; [ asl20 ];
  };
}
