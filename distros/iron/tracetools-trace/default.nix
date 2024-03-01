
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttng-tools, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-tracetools-trace";
  version = "6.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/iron/tracetools_trace/6.3.1-1.tar.gz";
    name = "6.3.1-1.tar.gz";
    sha256 = "0ba9920f1640dd102a27d8dd514850d7a8414f4c7b5acbfb08f4d1f3764cecd9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lttng-tools python3Packages.lttng ];

  meta = {
    description = ''Tools for setting up tracing sessions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
