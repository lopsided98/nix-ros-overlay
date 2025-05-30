
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-xml, launch-yaml, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-testing";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "4c3baa039be40d7d8fcfe7a59b4ff3fe170ccbf49505d7e767330e4b60a552be";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
