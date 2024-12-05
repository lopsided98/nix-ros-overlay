
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, lttng-tools, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-tracetools-trace";
  version = "6.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/iron/tracetools_trace/6.3.3-1.tar.gz";
    name = "6.3.3-1.tar.gz";
    sha256 = "e66ad924d6fb66927ac675e55a993136d68e8ab616b20f522d9c49634e1d434e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ lttng-tools python3Packages.lttng ];

  meta = {
    description = "Tools for setting up tracing sessions.";
    license = with lib.licenses; [ asl20 ];
  };
}
