
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-melodic-qpmad";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "asherikov";
        repo = "qpmad-release";
        rev = "release/melodic/qpmad/1.0.2-1";
        sha256 = "sha256-E+0gbE4lyVwlvDoGnPsuYtOv2ZdWZ+3W/MRMByasR1s=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''qpmad QP solver'';
    license = with lib.licenses; [ asl20 ];
  };
}
