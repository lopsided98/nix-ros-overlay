
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, doxygen, dynamic-graph-python, git, gtest, liblapack, openblas, pinocchio, sot-core, sot-tools }:
buildRosPackage {
  pname = "ros-melodic-sot-dynamic-pinocchio";
  version = "3.6.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stack-of-tasks";
        repo = "sot-dynamic-pinocchio-ros-release";
        rev = "release/melodic/sot-dynamic-pinocchio/3.6.5-1";
        sha256 = "sha256-MT1NNwbg/1OuCt42vG1XWKTgox+CCMhmh8plMB1f/lY=";
      };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ catkin dynamic-graph-python liblapack openblas pinocchio sot-core sot-tools ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Pinocchio bindings for dynamic-graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
