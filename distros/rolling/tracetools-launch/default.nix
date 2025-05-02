
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, tracetools-trace }:
buildRosPackage {
  pname = "ros-rolling-tracetools-launch";
  version = "8.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_launch/8.7.0-1.tar.gz";
    name = "8.7.0-1.tar.gz";
    sha256 = "1f080b4aadba010eec7fd8983aa1f04fbd445cc17fc1b5f0a4c4507b71d2df08";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = "Launch integration for tracing.";
    license = with lib.licenses; [ asl20 ];
  };
}
