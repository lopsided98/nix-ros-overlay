
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-tf-transformations";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/jazzy/tf_transformations/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a30f9c9a4974f98fac7532b7650e8211876cb099dc092caf62da890addbaafab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.transforms3d ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
