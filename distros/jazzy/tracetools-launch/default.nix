
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-launch";
  version = "8.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_launch/8.2.1-1.tar.gz";
    name = "8.2.1-1.tar.gz";
    sha256 = "5bf75c7aa3b3a1c30dc9219369a2308a80cced8169c3ecb3d65ead3962248533";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = "Launch integration for tracing.";
    license = with lib.licenses; [ asl20 ];
  };
}
