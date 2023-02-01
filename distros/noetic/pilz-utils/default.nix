
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, cmake-modules, code-coverage, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-pilz-utils";
  version = "0.7.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_common-release";
        rev = "release/noetic/pilz_utils/0.7.2-1";
        sha256 = "sha256-1vnKARE1ohxkoVD6pXWGszW4SQePAsY1H6aJAsIbRUU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin clang roscpp ];
  checkInputs = [ cmake-modules code-coverage rostest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_utils package contains utilities used by Pilz packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
