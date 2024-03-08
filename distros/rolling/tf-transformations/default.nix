
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-tf-transformations";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/rolling/tf_transformations/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "ea4ee95a92cc19ad11b73c37c1b2a62ef6116ace81ff0a998961897f8a75c7cb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
