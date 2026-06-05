
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-xml, launch-yaml, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-launch-testing";
  version = "3.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/jazzy/launch_testing/3.4.11-1.tar.gz";
    name = "3.4.11-1.tar.gz";
    sha256 = "918fc688b937df763f820eff2ac1d94f9057db3971f87db537d6e0ce93df8aed";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-xml launch-yaml osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
