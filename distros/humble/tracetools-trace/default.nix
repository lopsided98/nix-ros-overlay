
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-tracetools-trace";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/humble/tracetools_trace/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "f173a84d349d6648bb2ae7c6d83dcf66310a8fd76271c4a598f86d4261c725e0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.lttng ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
