
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-tf-transformations";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_transformations_release/archive/release/humble/tf_transformations/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "6ad1074611765e9513c6afda5f08c704ba04b0202700d0aa689fde6375d85717";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
