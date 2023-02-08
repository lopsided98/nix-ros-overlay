
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-melodic-exotica-ddp-solver";
  version = "6.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipab-slmc";
        repo = "exotica-release";
        rev = "release/melodic/exotica_ddp_solver/6.2.0-1";
        sha256 = "sha256-BkUusXl/YxioP2YDdwN4gPBjfpcpAcnQSn7CrsurawQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core exotica-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various DDP Solvers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
