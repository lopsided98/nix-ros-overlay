
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-launch-testing";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/foxy/launch_testing/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "6f7dfc9842a63dc0a17bc86ab6d442ecaf7e057afbaada1b1d1a854bdecf5df8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch python3Packages.mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch osrf-pycommon ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
