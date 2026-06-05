
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-launch-pytest";
  version = "3.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/jazzy/launch_pytest/3.4.11-1.tar.gz";
    name = "3.4.11-1.tar.gz";
    sha256 = "d37aa7b8f8958e21ce4da2e60f898789aabb77b2367a0b002946207baa868d9f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
