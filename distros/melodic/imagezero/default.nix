
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-imagezero";
  version = "0.2.4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "imagezero_transport-release";
        rev = "release/melodic/imagezero/0.2.4-0";
        sha256 = "sha256-ZQHq/lLE4TCflrCD4Sf63q6vzWTuFd0T17KO3iiDIpI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ImageZero is a fast lossless image compression algorithm for RGB color photos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
