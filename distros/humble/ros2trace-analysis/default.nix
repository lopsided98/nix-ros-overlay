
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-humble-ros2trace-analysis";
  version = "3.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/humble/ros2trace_analysis/3.0.0-4.tar.gz";
    name = "3.0.0-4.tar.gz";
    sha256 = "13a151da549f7a866ae4b7a7e643b9eb6b71a2a7e4c5c3ff82db50d2c602a8bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = ''The trace-analysis command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
