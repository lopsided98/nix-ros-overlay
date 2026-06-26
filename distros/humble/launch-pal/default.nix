
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_pal-release/archive/release/humble/launch_pal/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "aabbc2fae95ba5eb398d007c436f0cd2e00a05ccf2e8a323a1689511ef984021";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
