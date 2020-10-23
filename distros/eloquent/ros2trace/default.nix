
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-trace }:
buildRosPackage {
  pname = "ros-eloquent-ros2trace";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/ros2trace/0.2.12-1";
    name = "archive.tar.gz";
    sha256 = "53b7fd634c98c0ad3d8ce76a3ef0c869c178815a95fb826600c4b58875b4cfc5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-trace ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
