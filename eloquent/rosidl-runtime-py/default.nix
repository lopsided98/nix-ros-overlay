
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-runtime-py";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/eloquent/rosidl_runtime_py/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "37414c051d82e7f88ca135dbf139e58abd284bf615d050954fb086dec7070ae3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
