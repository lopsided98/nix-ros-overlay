
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-pytest";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_pytest/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "641b0c0304fc6b1dbe303ff4680587141a120ea98e20ae18d4641c8d10ac6092";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
