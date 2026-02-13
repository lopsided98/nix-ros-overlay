
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-pal";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_pal-release/archive/release/humble/launch_pal/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "0accbd0ce9f1f1ec5a77551aa83bb1d1f602fa339e362aa96d814c52858584c6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
