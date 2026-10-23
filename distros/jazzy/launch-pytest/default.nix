
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-launch-pytest";
  version = "3.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/jazzy/launch_pytest/3.4.13-1.tar.gz";
    name = "3.4.13-1.tar.gz";
    sha256 = "3770e9b3b2b6d62be9bd220518b43d74925ca72ed00ac6f35b0266d5a7a72a9d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
