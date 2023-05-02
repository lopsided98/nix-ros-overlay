
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-xml, launch-yaml, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-testing";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "dfa9c408b253274910a263087048fe035fc5b31a2583922efa91195e11bcb4ba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
