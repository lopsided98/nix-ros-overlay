
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttngpy, procps, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-trace";
  version = "8.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_trace/8.2.6-1.tar.gz";
    name = "8.2.6-1.tar.gz";
    sha256 = "0535722925efc48d6cd072a848b6e1f9131d4dae91c5593d16aab2356a9539c9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ lttngpy procps ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
