
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-pytest";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_pytest/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "cc38462ec365af3cd9c1f667bff4fd8319a8b2d18559ac0bd33e450615d79ac6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
