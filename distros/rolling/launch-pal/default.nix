
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-pal";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_pal-release/archive/release/rolling/launch_pal/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "5f3118114f29729f5a459fc4acd729c4f4f40d132a7d9bd8b4b8ecd08c7fefb1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
