
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, ament-xmllint, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-launch";
  version = "3.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/kilted/launch/3.8.10-1.tar.gz";
    name = "3.8.10-1.tar.gz";
    sha256 = "6039c0234df130778876286554d87a7fa28d7ad5e05827f565fd754feac3d1ce";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
