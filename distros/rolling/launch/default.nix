
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch";
  version = "3.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch/3.9.5-1.tar.gz";
    name = "3.9.5-1.tar.gz";
    sha256 = "e8c67fa533d5a8a7c4a6fccf755740376bba3f67747fda2da1b1855fc483f964";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout python3Packages.types-pyyaml ];
  propagatedBuildInputs = [ ament-index-python python3Packages.importlib-metadata python3Packages.lark python3Packages.osrf-pycommon python3Packages.pyyaml python3Packages.typing-extensions ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
