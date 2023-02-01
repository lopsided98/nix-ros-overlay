
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-catkin";
  version = "0.7.29-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "catkin-release";
        rev = "release/melodic/catkin/0.7.29-1";
        sha256 = "sha256-lgEIfXBmb8x4v83Cwx1C1svTXoq+eIM34kQ3vQajX2A=";
      };

  buildType = "catkin";
  buildInputs = [ pythonPackages.setuptools ];
  checkInputs = [ pythonPackages.mock pythonPackages.nose ];
  propagatedBuildInputs = [ cmake gtest python pythonPackages.catkin-pkg pythonPackages.empy pythonPackages.nose ];
  nativeBuildInputs = [ cmake pythonPackages.setuptools ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
