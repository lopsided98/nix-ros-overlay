
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages, ros2cli, tracetools-analysis }:
buildRosPackage {
  pname = "ros-kilted-ros2trace-analysis";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tracetools_analysis-release/archive/release/kilted/ros2trace_analysis/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "38a82da750f54e7449078a808016c4517862b6b0f1d72e41e02a1fc230922b26";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ros2cli tracetools-analysis ];

  meta = {
    description = "The trace-analysis command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
