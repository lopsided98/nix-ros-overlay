
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-tf-transformations";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/iron/tf_transformations/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d53d665530e1ab730b78167d8b4cd3168f133034a8b2b4bab99cbc52f5000f11";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.transforms3d ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
