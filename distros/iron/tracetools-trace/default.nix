
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttng-tools, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-tracetools-trace";
  version = "6.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/iron/tracetools_trace/6.3.2-1.tar.gz";
    name = "6.3.2-1.tar.gz";
    sha256 = "fa430a6c4348e0e87f5ea26364d76cedef2fdb69c24f2e2c7d1ae9fc486b8247";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lttng-tools python3Packages.lttng ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
