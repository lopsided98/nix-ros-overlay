
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, babeltrace, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-tracetools-read";
  version = "8.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/kilted/tracetools_read/8.6.1-1.tar.gz";
    name = "8.6.1-1.tar.gz";
    sha256 = "0e0cc51144d139d2fe24dc0ac6ff1ddca2f5b5578df6f818faa3d2a6e739e99f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ babeltrace ];

  meta = {
    description = "Tools for reading traces.";
    license = with lib.licenses; [ asl20 ];
  };
}
