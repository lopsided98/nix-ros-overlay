
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-tracetools-trace";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/humble/tracetools_trace/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "69f8705139952ddba4a7d2a0e1af92f1146f59c10865c997886d7e18df12432c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.lttng ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
