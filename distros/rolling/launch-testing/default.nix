
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-xml, launch-yaml, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-testing";
  version = "3.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing/3.4.0-2.tar.gz";
    name = "3.4.0-2.tar.gz";
    sha256 = "41d666177c8fd03997b4f0ca72707db699a3ea342a86e9e1c34cb2d5beec5e6f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
