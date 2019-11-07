
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, launch-ros, launch, pythonPackages, ament-pep257, tracetools-trace, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-tracetools-launch";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/dashing/tracetools_launch/0.2.8-1";
    name = "archive.tar.gz";
    sha256 = "79e8f22eefe5b15423eb3d57822ef407a03b0bd4a9cca40bae1eeeddc7acac4e";
  };

  buildType = "ament_python";
  buildInputs = [ tracetools-trace launch launch-ros ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ tracetools-trace launch launch-ros ];

  meta = {
    description = ''Launch integration for tracing.'';
    license = with lib.licenses; [ asl20 ];
  };
}
