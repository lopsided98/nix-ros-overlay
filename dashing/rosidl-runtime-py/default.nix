
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, rosidl-parser, test-msgs, pythonPackages, ament-pep257, python3Packages, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-rosidl-runtime-py";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/rosidl_runtime_py/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "6684a827307046043fa61a0807c8b57dc0e52c6fc9a45ab877ce92f92b701dff";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint pythonPackages.pytest ament-flake8 test-msgs ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
