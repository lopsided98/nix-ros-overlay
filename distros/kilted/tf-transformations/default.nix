
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-tf-transformations";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/kilted/tf_transformations/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "67b1a5380f71fa533d05a76383938d592d2107ff4f85d1853a3064464b7caf98";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.transforms3d ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
