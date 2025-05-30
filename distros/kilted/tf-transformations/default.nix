
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-tf-transformations";
  version = "1.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/kilted/tf_transformations/1.0.1-5.tar.gz";
    name = "1.0.1-5.tar.gz";
    sha256 = "938e8a8457f5fed5f245b6bb0bfb8a8ca6dc5e18249460b0b5964099d87b32bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "Reimplementation of the tf/transformations.py library for common Python spatial operations";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
