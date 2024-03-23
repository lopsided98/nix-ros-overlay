
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-launch-pytest";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_pytest/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "6c387917a2d6d0216906e7552a812ebbf3288aea5050943f4d2b4d3bc3c37af0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
