
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rosidl-runtime-py";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/humble/rosidl_runtime_py/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "60f57b73791fa6d6976d4f3ff8f1df82226a8cf489793b85989a9f6f1da5f572";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = "Runtime utilities for working with generated ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
