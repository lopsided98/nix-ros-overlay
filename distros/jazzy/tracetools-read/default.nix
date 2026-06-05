
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, babeltrace, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-read";
  version = "8.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_read/8.2.6-1.tar.gz";
    name = "8.2.6-1.tar.gz";
    sha256 = "bfc44e8122e308dcdd4abc34df0e463614fc04239d4cdb758088f7f6239d5516";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ babeltrace ];

  meta = {
    description = "Tools for reading traces.";
    license = with lib.licenses; [ asl20 ];
  };
}
