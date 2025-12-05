
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch-ros, python3Packages, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-examples-tf2-py";
  version = "0.25.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/examples_tf2_py/0.25.18-1.tar.gz";
    name = "0.25.18-1.tar.gz";
    sha256 = "4f6a34ccf2eb4c8e633b3b4c87b93d1e64e5b3e99d68936e00f4e7137b22752d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch-ros tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
