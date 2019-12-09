
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, std-msgs, std-srvs, pythonPackages, test-msgs, ament-xmllint, ament-pep257, ament-flake8, rosidl-parser }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-runtime-py";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/eloquent/rosidl_runtime_py/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "37414c051d82e7f88ca135dbf139e58abd284bf615d050954fb086dec7070ae3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright std-msgs std-srvs test-msgs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ python3Packages.pyyaml python3Packages.numpy rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
