
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tracetools-trace, ament-copyright, pythonPackages, ament-xmllint, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2trace";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/ros2trace/0.2.10-1";
    name = "archive.tar.gz";
    sha256 = "411014fb04885dcd4b057e8bc04370544af66962be21b8289e7c9f803d14aa4b";
  };

  buildType = "ament_python";
  buildInputs = [ tracetools-trace ros2cli ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ tracetools-trace ros2cli ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
