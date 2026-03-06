
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-launch-pal";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_pal-release/archive/release/jazzy/launch_pal/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "821dce945a768cc4f75b8d50dd3ac63fd0526e0d7fa13a8d6720ffbcc04ba0e6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.jinja2 python3Packages.pyyaml ];

  meta = {
    description = "Utilities for launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
