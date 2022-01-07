
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-tf-transformations";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DLu/tf_transformations_release/archive/release/foxy/tf_transformations/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3121c9c3a744914be0069131884e86bcd0bbb1bc1bde0c517b895f15c3843235";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ pythonPackages.numpy ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
