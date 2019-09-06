
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, launch, pythonPackages, ament-pep257, tracetools-trace, ament-copyright }:
buildRosPackage rec {
  pname = "ros-dashing-tracetools-launch";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/dashing/tracetools_launch/0.2.0-1";
    name = "archive.tar.gz";
    sha256 = "ce95f480732cc76b45cb6ab69292e5bcfab527221a1eb6250c692deb04d2d6c5";
  };

  buildType = "ament_python";
  buildInputs = [ tracetools-trace launch launch-ros ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ tracetools-trace launch launch-ros ];

  meta = {
    description = ''Launch integration for tracing.'';
    license = with lib.licenses; [ asl20 ];
  };
}
