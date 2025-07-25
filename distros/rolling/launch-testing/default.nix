
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-xml, launch-yaml, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-testing";
  version = "3.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_testing/3.9.1-1.tar.gz";
    name = "3.9.1-1.tar.gz";
    sha256 = "c006b1d7ba918c4f73d3b8d4a38aaafbceaf668600871f66f9f2f189ae8381c0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
