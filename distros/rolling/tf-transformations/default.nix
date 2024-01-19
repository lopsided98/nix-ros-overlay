
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-tf-transformations";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/rolling/tf_transformations/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "ce64f280076a6c186e55f51063885f71af7270cc47bfaecb76958bb957d41a02";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
