
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-foxy-ros2trace";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/foxy/ros2trace/1.0.5-2";
    name = "archive.tar.gz";
    sha256 = "a4bb0ac1ed82bcabfada71dcdc7dd0bcc0d1c48ea5b1b63df62a9c3a6847fe13";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
