
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-rolling-ros2trace-analysis";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/rolling/ros2trace_analysis/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "67d972d238fdeb6b71e68858e2c8fb720c6bd37ef41827cd51f3c997637eb5fb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = "The trace-analysis command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
