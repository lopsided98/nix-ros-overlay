
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, babeltrace, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-read";
  version = "8.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_read/8.2.0-2.tar.gz";
    name = "8.2.0-2.tar.gz";
    sha256 = "7c30c18ead9fe28e07cb9f501ea7ba22c12c97b91a9160e78834232ad02d244e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ babeltrace ];

  meta = {
    description = "Tools for reading traces.";
    license = with lib.licenses; [ asl20 ];
  };
}
