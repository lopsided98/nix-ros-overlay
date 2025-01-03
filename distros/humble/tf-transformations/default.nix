
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-humble-tf-transformations";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/humble/tf_transformations/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a2126bb8aa5eae311071be1f83955306a30e949e471a5510f3b3f45e06e72cb8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.transforms3d ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
