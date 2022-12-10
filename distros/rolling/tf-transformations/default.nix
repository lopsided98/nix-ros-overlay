
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-tf-transformations";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/rolling/tf_transformations/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "881e752d94bea16e3dcf29fcaea03f5dc71dc1b43c0c7e2d69a294424d5d83eb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
