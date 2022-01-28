
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-testing";
  version = "0.10.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_testing/0.10.8-2.tar.gz";
    name = "0.10.8-2.tar.gz";
    sha256 = "1d328cd6a3cee5db437cead38ff365f64ff2616043688a53eb1b0b0d6adae03d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch python3Packages.mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch osrf-pycommon ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
