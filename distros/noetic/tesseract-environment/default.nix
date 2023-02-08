
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, eigen, gtest, llvmPackages, ros-industrial-cmake-boilerplate, tesseract-collision, tesseract-common, tesseract-geometry, tesseract-kinematics, tesseract-scene-graph, tesseract-srdf, tesseract-state-solver, tesseract-support, tesseract-urdf }:
buildRosPackage {
  pname = "ros-noetic-tesseract-environment";
  version = "0.13.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "tesseract-release";
        rev = "release/noetic/tesseract_environment/0.13.1-1";
        sha256 = "sha256-h3lwjQpzPOZD1obob0h5CEtFupfCyNiWz2VLWrNwWFA=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest llvmPackages.openmp tesseract-support ];
  propagatedBuildInputs = [ console-bridge eigen tesseract-collision tesseract-common tesseract-geometry tesseract-kinematics tesseract-scene-graph tesseract-srdf tesseract-state-solver tesseract-urdf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_environment package contains environment'';
    license = with lib.licenses; [ asl20 ];
  };
}
