
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-noetic-ixblue-stdbin-decoder";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ixblue";
        repo = "ixblue_stdbin_decoder-release";
        rev = "release/noetic/ixblue_stdbin_decoder/0.2.0-1";
        sha256 = "sha256-fjucNh530wldQfBOf7SINGGp0e2XJKOhjMCw3aiWI2w=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ git gtest ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''iXblue parsing library for protocol iXblue stdbin'';
    license = with lib.licenses; [ mit ];
  };
}
