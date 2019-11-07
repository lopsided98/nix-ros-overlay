
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, tracetools-trace, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2trace";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/dashing/ros2trace/0.2.8-1";
    name = "archive.tar.gz";
    sha256 = "64237813f80593f21dffe7f61ba91f290111e8a994449bc55800e9d42acf29c5";
  };

  buildType = "ament_python";
  buildInputs = [ tracetools-trace ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ tracetools-trace ros2cli ];

  meta = {
    description = ''The trace command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
