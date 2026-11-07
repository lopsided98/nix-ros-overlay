
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-launch";
  version = "3.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/jazzy/launch/3.4.13-1.tar.gz";
    name = "3.4.13-1.tar.gz";
    sha256 = "af17c8e5536c36117accb605c42d8f0da09ec64817e1a8526b73685b8e0947bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.importlib-metadata python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
