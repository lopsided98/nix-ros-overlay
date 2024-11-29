
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttngpy, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-tracetools-trace";
  version = "8.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/rolling/tracetools_trace/8.4.1-1.tar.gz";
    name = "8.4.1-1.tar.gz";
    sha256 = "9187e6ea12b6ba276a914d8ac5c354de93ac0f1f3fa4854d0ff2ec71aabd0d98";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lttngpy ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
