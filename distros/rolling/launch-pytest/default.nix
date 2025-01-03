
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-pytest";
  version = "3.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_pytest/3.7.1-1.tar.gz";
    name = "3.7.1-1.tar.gz";
    sha256 = "61eb79e7a0cb234a9aa1ad2bd8c7688f45a99c2c8e7ef1d7238915ce34e00c34";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
