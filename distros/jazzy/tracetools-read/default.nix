
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, babeltrace, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-read";
  version = "8.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_read/8.2.2-1.tar.gz";
    name = "8.2.2-1.tar.gz";
    sha256 = "1f436140a6129e5c9dd02b85cd818db0090b81000f66413d234e8b181b067a3c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ babeltrace ];

  meta = {
    description = "Tools for reading traces.";
    license = with lib.licenses; [ asl20 ];
  };
}
