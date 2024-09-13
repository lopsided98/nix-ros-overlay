
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttngpy, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-trace";
  version = "8.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_trace/8.2.2-1.tar.gz";
    name = "8.2.2-1.tar.gz";
    sha256 = "b511cc889450841da7341a3decadb1f231a3da361b0832a570af9a542999baf0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lttngpy ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
