
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, rosidl-parser, test-msgs, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-rosidl-runtime-py";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/rosidl_runtime_py/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "c8830596d56680fd288ccc552ddfcbe534cb0e5416800a5e8bfb4f9bb5bd4c01";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint pythonPackages.pytest ament-flake8 test-msgs ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
