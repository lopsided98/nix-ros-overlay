
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-pytest";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_pytest/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "d6a51dcf11d4d9fdb65742bc3cd17db8c6184d3fd128176f7b95ce3748c9a5ca";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
