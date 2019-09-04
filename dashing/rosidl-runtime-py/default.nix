
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, rosidl-parser, test-msgs, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-rosidl-runtime-py";
  version = "0.7.7-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/rosidl_runtime_py/0.7.7-1.tar.gz;
    sha256 = "60364058a821326d87f4a83a27df7a0a606872916ef25d55f49c5f38896c5430";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint pythonPackages.pytest ament-flake8 test-msgs ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
