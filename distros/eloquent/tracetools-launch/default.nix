
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-trace }:
buildRosPackage {
  pname = "ros-eloquent-tracetools-launch";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/tracetools_launch/0.2.12-1";
    name = "archive.tar.gz";
    sha256 = "0a2037162f7f02bc0e4a77b5e5f722af8f7c60a13367cf70fbca2f7bf15ffc80";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = ''Launch integration for tracing.'';
    license = with lib.licenses; [ asl20 ];
  };
}
