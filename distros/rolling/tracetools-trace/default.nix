
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttngpy, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-tracetools-trace";
  version = "8.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_trace/8.9.0-1.tar.gz";
    name = "8.9.0-1.tar.gz";
    sha256 = "340bba59ad66176bff3dfee4fda0b4f602c56062394d3357bd5d0e1adf0c7bb8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ lttngpy ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
