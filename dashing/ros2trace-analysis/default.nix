
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, ament-copyright, tracetools-analysis, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2trace-analysis";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/micro-ROS/ros_tracing/tracetools_analysis-release/repository/archive.tar.gz?ref=release/dashing/ros2trace_analysis/0.2.1-1";
    name = "archive.tar.gz";
    sha256 = "85a6703cc16e45e71e1d55c7192d86bf2789280f9da1ea3eda478a18264ca769";
  };

  buildType = "ament_python";
  buildInputs = [ tracetools-analysis ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ tracetools-analysis ros2cli ];

  meta = {
    description = ''The trace analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
