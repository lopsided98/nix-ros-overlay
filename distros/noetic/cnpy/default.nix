
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, zlib }:
buildRosPackage {
  pname = "ros-noetic-cnpy";
  version = "0.0.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PeterMitrano";
        repo = "cnpy-release";
        rev = "release/noetic/cnpy/0.0.8-1";
        sha256 = "sha256-jrOoTg772vMXbU5KCB/V9EAokyf6kHqgVGbuOuIpk6A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''library to read/write .npy and .npz files in C/C++'';
    license = with lib.licenses; [ mit ];
  };
}
