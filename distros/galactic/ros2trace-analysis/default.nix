
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-galactic-ros2trace-analysis";
  version = "2.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/galactic/ros2trace_analysis/2.0.3-4.tar.gz";
    name = "2.0.3-4.tar.gz";
    sha256 = "0bed8f562985af2c6a07e353b844b17de06d42d70fed1971e4515e09558fe19d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace-analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
