
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-tf-transformations";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/iron/tf_transformations/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "f62718091a0b62c51af68b5900d2691bbd8afbc090e434d33486d026bb8d9f96";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
