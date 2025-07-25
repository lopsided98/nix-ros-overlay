
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-rosidl-runtime-py";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/kilted/rosidl_runtime_py/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "219e6b1d8d38494fd14d65a803d7a0ba3ca633e4da68e0325112005ba2323b03";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = "Runtime utilities for working with generated ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
