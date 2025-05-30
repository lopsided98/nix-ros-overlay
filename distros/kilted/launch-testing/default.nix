
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-xml, launch-yaml, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-launch-testing";
  version = "3.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/kilted/launch_testing/3.8.1-2.tar.gz";
    name = "3.8.1-2.tar.gz";
    sha256 = "f7b7cd2a58780b6cebb9c3b9eac2bddead708b8466eaa840e148d5ac49b5f3e2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
