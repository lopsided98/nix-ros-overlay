
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-galactic-tf-transformations";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DLu/tf_transformations_release/archive/release/galactic/tf_transformations/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a2c6d18520263bc2c95e8734412d117523ae928f334224beea16ed8bcf823863";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ pythonPackages.numpy ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
