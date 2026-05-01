
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-xml, launch-yaml, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-launch-testing";
  version = "3.9.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/lyrical/launch_testing/3.9.7-3.tar.gz";
    name = "3.9.7-3.tar.gz";
    sha256 = "0bd893c12ab251b65663fccc2cbeb62067527f96e08d288e40719f66bfd2855c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml python3Packages.osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
