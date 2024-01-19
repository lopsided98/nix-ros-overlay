
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-rolling-ros2trace-analysis";
  version = "3.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/rolling/ros2trace_analysis/3.0.0-4.tar.gz";
    name = "3.0.0-4.tar.gz";
    sha256 = "cb2513e33748ee8035e71c01781e04818aa9be3ca2bc0561d81e01d50236901c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace-analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
