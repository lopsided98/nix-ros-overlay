
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, babeltrace, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-read";
  version = "8.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_read/8.2.5-1.tar.gz";
    name = "8.2.5-1.tar.gz";
    sha256 = "50f92eaefeac38b2febccdc6ad6f93f6c9eb699fde86446db8d202f6f55f1d06";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ babeltrace ];

  meta = {
    description = "Tools for reading traces.";
    license = with lib.licenses; [ asl20 ];
  };
}
