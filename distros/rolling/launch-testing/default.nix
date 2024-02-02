
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-xml, launch-yaml, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-testing";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "7c1fe8a784d153401c8783cbcf4cd262ed792eb3e9ad3f128bace6361d457906";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
