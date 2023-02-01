
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-tf-transformations";
  version = "1.0.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "tf_transformations_release";
        rev = "release/humble/tf_transformations/1.0.1-3";
        sha256 = "sha256-ZpntCNRY//B8eLWdIgouelBtxzP77cHw4dIl0MVnAig=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Reimplementation of the tf/transformations.py library for common Python spatial operations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
