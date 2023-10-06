
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-pytest";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_pytest/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "8e6e0787361e282e03316e3cdf0a37c1eed0875dc6f2027d8748c75acdd10570";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
