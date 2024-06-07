
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-tf-transformations";
  version = "1.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/jazzy/tf_transformations/1.0.1-5.tar.gz";
    name = "1.0.1-5.tar.gz";
    sha256 = "9b44c7ce607fd85b57cb8e7c6c1d638035e47c0fff942bd4db9a1a1cb3b4e381";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
