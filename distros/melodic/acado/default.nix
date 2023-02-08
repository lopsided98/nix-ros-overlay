
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-acado";
  version = "1.2.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tud-cor";
        repo = "acado-release";
        rev = "release/melodic/acado/1.2.3-0";
        sha256 = "sha256-wloIaH1LRfaOdPNfmFwwmC+R/bv+8E47YQn7h1LJcJg=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''ACADO Toolkit'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
