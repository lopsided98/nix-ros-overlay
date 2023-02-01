
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-iris-lama";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "eupedrosa";
        repo = "iris_lama-release";
        rev = "release/melodic/iris_lama/1.2.0-1";
        sha256 = "sha256-b+fE4tDyfzUmCjRX0W+QG6Q2oGBhjGxm7BD5lnXuUCU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''IRIS package for Localization and Mapping (LaMa).
        This packages includes the sparse-dense library for grid mapping,
        a 2D localization algorithm based on scan matching, an online SLAM solution
        with a dynamic likelihood field and a 2D RB Particle Filter SLAM solution
        with multithreading.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
