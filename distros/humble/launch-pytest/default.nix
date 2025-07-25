
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pytest";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_pytest/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "6d0b68a775907c47364110a36aa5150962db6111bae60227e8a4e450631c9437";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
