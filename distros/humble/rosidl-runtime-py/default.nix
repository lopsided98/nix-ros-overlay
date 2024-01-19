
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rosidl-runtime-py";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/humble/rosidl_runtime_py/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "74a677584c14e7f248efeef51889047be931de4ecfefab3b22897903f7a6b6f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
