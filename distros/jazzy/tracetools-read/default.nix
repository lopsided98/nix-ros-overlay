
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, babeltrace, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-read";
  version = "8.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_read/8.2.3-1.tar.gz";
    name = "8.2.3-1.tar.gz";
    sha256 = "75cb726c9a6a1f38ccd9c4838758e8485c3bb6a7b8d12180f2e49358b07f7ec5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ babeltrace ];

  meta = {
    description = "Tools for reading traces.";
    license = with lib.licenses; [ asl20 ];
  };
}
