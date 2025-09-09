
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, python3Packages, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-examples-tf2-py";
  version = "0.25.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/examples_tf2_py/0.25.16-1.tar.gz";
    name = "0.25.16-1.tar.gz";
    sha256 = "0cb1f3a591ab38e9c68ebf8068b9930b2aa0e30d6d55105f5ab703327d31acfb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch-ros tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
