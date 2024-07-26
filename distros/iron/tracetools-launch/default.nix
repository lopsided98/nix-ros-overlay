
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-trace }:
buildRosPackage {
  pname = "ros-iron-tracetools-launch";
  version = "6.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/iron/tracetools_launch/6.3.2-1.tar.gz";
    name = "6.3.2-1.tar.gz";
    sha256 = "1329cf924fafc8966815dea0f6f2a3e7cf47e173278faf397827db975cb3b042";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = "Launch integration for tracing.";
    license = with lib.licenses; [ asl20 ];
  };
}
