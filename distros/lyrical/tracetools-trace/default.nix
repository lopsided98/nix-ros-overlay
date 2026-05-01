
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttngpy, procps, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-tracetools-trace";
  version = "8.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/lyrical/tracetools_trace/8.10.2-1.tar.gz";
    name = "8.10.2-1.tar.gz";
    sha256 = "b475636d844d10e275bdda738e8c68d70271d8d86aeb8c78618e075df36df4f0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ lttngpy procps ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
