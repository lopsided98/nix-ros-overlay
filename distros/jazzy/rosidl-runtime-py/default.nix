
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-runtime-py";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/jazzy/rosidl_runtime_py/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "3d308952557454b780ee4d816ff5e515960529c4e555b15335a54d66b6ba5e62";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = "Runtime utilities for working with generated ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
