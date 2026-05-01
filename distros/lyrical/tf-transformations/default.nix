
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-tf-transformations";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/lyrical/tf_transformations/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "cb47ab8d29500a95fa8cc4ffb1c3146ef1e9e4c8c172877fc407ff6d2a85cbf0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.transforms3d ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
