
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-tf-transformations";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/rolling/tf_transformations/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "5351cd6dfa3bb2e50dc13686d57485fffb212293028c58ca26e3ac5b59cdf2d5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.transforms3d ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
