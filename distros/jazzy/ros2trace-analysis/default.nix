
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, pythonPackages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-jazzy-ros2trace-analysis";
  version = "3.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/jazzy/ros2trace_analysis/3.0.0-6.tar.gz";
    name = "3.0.0-6.tar.gz";
    sha256 = "942d3c7f72a3e622f376e6767fef862dd5ae3ad36bdd31cd496a76c32f9347b0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = "The trace-analysis command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
