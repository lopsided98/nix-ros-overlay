
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, cmake, dataflow-lite, gtest }:
buildRosPackage {
  pname = "ros-melodic-file-management";
  version = "1.1.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "cloudwatch_common-release";
        rev = "release/melodic/file_management/1.1.5-1";
        sha256 = "sha256-hz4/LrFCmPDGkLfyFAYxvNYxiF7CVX5f9JgLGIm6jxs=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used to manage offline files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
