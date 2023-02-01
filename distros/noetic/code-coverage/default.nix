
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-code-coverage";
  version = "0.4.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "mikeferguson";
        repo = "code_coverage-gbp";
        rev = "release/noetic/code_coverage/0.4.4-1";
        sha256 = "sha256-fKLxP4ry2JxTuyzUBrKpjFCsYYY2ceN5PKZZ5LRucPA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lcov python3Packages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
