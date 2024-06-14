
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttngpy, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-trace";
  version = "8.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_trace/8.2.0-2.tar.gz";
    name = "8.2.0-2.tar.gz";
    sha256 = "8a9f64040fa579f8c625a0e0ca3f7c042ca7ffff569d191618d6918be5962fb6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lttngpy ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
