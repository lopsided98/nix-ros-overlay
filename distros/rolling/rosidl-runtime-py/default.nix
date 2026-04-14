
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rosidl-buffer-py, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosidl-runtime-py";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/rolling/rosidl_runtime_py/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "7e5b97accf844e898bd72e6ae218d95153892187ffaa93430ea61300b5d5916d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-buffer-py rosidl-parser ];

  meta = {
    description = "Runtime utilities for working with generated ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
