
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, boost, catkin, cmake, gtest }:
buildRosPackage {
  pname = "ros-melodic-s3-common";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "rosbag_uploader-release";
        rev = "release/melodic/s3_common/1.0.1-1";
        sha256 = "sha256-gXFna7MZ2Hy5i15mlFnYZTE1oysVww2hdHWm3KwYi5I=";
      };

  buildType = "cmake";
  buildInputs = [ catkin cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common boost ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common utilities for interacting with AWS S3'';
    license = with lib.licenses; [ asl20 ];
  };
}
