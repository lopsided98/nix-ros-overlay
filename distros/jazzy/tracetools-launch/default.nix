
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, launch, launch-ros, python3Packages, tracetools-trace }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-launch";
  version = "8.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/jazzy/tracetools_launch/8.2.6-1.tar.gz";
    name = "8.2.6-1.tar.gz";
    sha256 = "59a0e5577cd23778e0580712c6299c9425f2b3b671363e497adfe61f4c2035b9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = "Launch integration for tracing.";
    license = with lib.licenses; [ asl20 ];
  };
}
