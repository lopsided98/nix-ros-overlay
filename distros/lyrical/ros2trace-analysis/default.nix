
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-lyrical-ros2trace-analysis";
  version = "3.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/lyrical/ros2trace_analysis/3.1.0-3.tar.gz";
    name = "3.1.0-3.tar.gz";
    sha256 = "b199fb803a756a23872c115a6a8da7bbc4ccbf01d1764076b2668214e0327b45";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = "The trace-analysis command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
