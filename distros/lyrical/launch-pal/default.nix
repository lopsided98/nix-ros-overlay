
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-launch-pal";
  version = "0.20.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_pal-release/archive/release/lyrical/launch_pal/0.20.3-3.tar.gz";
    name = "0.20.3-3.tar.gz";
    sha256 = "d54510bf6b371d815503b931cfafe624dde44ddcbccc82c6cf3604a114cc5251";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
