
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, curl, gtest, openssl, ros-environment, util-linux, zlib }:
buildRosPackage {
  pname = "ros-melodic-aws-common";
  version = "2.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "aws_common-release";
        rev = "release/melodic/aws_common/2.2.0-1";
        sha256 = "sha256-1RDpsiryF7yJ4e24yRk9U7xr3RHn9LYYqjKjLWtxT08=";
      };

  buildType = "cmake";
  buildInputs = [ catkin cmake ros-environment ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ curl openssl util-linux zlib ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common AWS SDK utilities, intended for use by ROS packages using the AWS SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
