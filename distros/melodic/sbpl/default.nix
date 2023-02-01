
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-sbpl";
  version = "1.3.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "sbpl-release";
        rev = "release/melodic/sbpl/1.3.1-0";
        sha256 = "sha256-cgcPFOXOMnw5oAxDkyMNOhxfemMesoM4xzpW+ZQlqAc=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Search-based planning library (SBPL).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
