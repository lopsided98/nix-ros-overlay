
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-launch-testing";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/galactic/launch_testing/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "3c06f4feca0b5457f9eb4783c5dbda4c6c226fd2921ff51b106f29c9f1f848a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch osrf-pycommon ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
