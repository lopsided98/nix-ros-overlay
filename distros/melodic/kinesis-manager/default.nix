
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, curl, gtest, log4cplus, openssl, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-kinesis-manager";
  version = "2.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "kinesis_manager-release";
        rev = "release/melodic/kinesis_manager/2.0.3-1";
        sha256 = "sha256-8Hfppg6oU0MVKr6VeDNS1HF5rhoX87kDs8SAtmFlGiU=";
      };

  buildType = "cmake";
  buildInputs = [ catkin cmake pkg-config ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common boost curl log4cplus openssl ];
  nativeBuildInputs = [ catkin cmake pkg-config ];

  meta = {
    description = ''AWS Kinesis stream management library intended for use with the Kinesis Video Producer SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
