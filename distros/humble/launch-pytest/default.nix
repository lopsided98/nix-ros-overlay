
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pytest";
  version = "1.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_pytest/1.0.14-1.tar.gz";
    name = "1.0.14-1.tar.gz";
    sha256 = "5a97f3370e6c099afd157dacdc4a11e61b9a9678a99ef9774ccb73f65c802f93";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon python3Packages.pytest ];

  meta = {
    description = "A package to create tests which involve launch files and multiple processes.";
    license = with lib.licenses; [ asl20 ];
  };
}
