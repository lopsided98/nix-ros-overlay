
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-pybind11-catkin";
  version = "2.5.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wxmerkt";
        repo = "pybind11_catkin-release";
        rev = "release/noetic/pybind11_catkin/2.5.0-1";
        sha256 = "sha256-xBvLN56+VVkJ5x1C/SaNVZ91sN/E2gu46IO5xSlS8a4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pybind11 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
