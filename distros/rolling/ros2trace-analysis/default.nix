
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-rolling-ros2trace-analysis";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/rolling/ros2trace_analysis/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e603cd78233247615b7b1dd5dbfb0e693f7fabfc5b97343ce1b67da6cb2ee41a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = "The trace-analysis command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
