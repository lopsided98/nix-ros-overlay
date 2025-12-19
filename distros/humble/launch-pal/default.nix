
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_pal-release/archive/release/humble/launch_pal/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "173d9f7a8547221dd63ae8abdee6232a46879cca9a6727f43daadbb028386188";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
