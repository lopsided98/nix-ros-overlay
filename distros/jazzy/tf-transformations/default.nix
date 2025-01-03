
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tf-transformations";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/jazzy/tf_transformations/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "844512aed6a2d144c039b57397e274ebc8b585cdd29f670901166840772e3fba";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.transforms3d ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
