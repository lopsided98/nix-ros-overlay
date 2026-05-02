
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-pal";
  version = "0.20.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_pal-release/archive/release/rolling/launch_pal/0.20.3-2.tar.gz";
    name = "0.20.3-2.tar.gz";
    sha256 = "9bee03af5a27e0045f2e2d80585e65faddf32227d3fd94b649db62a5d7dddc57";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
