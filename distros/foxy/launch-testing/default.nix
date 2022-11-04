
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-testing";
  version = "0.10.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_testing/0.10.10-1.tar.gz";
    name = "0.10.10-1.tar.gz";
    sha256 = "5596b2338ed124349d44eed27502201a21d8cc172f0d87bf15cf1861aac126e0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch python3Packages.mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch osrf-pycommon ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
