
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosidl-runtime-py";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/rolling/rosidl_runtime_py/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "058674882cd5d0f28f4ad94f0342e19a4fdaabd401625b72a204c3f988669bd5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = "Runtime utilities for working with generated ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
