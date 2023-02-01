
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-noetic-iris-lama";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "eupedrosa";
        repo = "iris_lama-release";
        rev = "release/noetic/iris_lama/1.3.1-1";
        sha256 = "sha256-rh2X52BSuZRDWhl5F7cOV0d/uMJ6O8KCHHSrhjl8+w0=";
      };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''IRIS package for Localization and Mapping (LaMa).
        This packages includes the sparse-dense library for grid mapping,
        a 2D localization algorithm based on scan matching, an online SLAM solution
        with a dynamic likelihood field and a 2D RB Particle Filter SLAM solution
        with multithreading.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
