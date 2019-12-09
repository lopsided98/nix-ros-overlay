
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, launch, osrf-pycommon, pythonPackages, ament-flake8, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-eloquent-launch-testing";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/eloquent/launch_testing/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "9484d8e927fbec533394ddec67e9683dba6a514fb655a85cd4454480fe5539d3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright launch ament-pep257 pythonPackages.pytest ament-flake8 python3Packages.mock ];
  propagatedBuildInputs = [ osrf-pycommon ament-index-python launch ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
