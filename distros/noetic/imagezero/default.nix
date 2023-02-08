
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-imagezero";
  version = "0.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "imagezero_transport-release";
        rev = "release/noetic/imagezero/0.2.5-1";
        sha256 = "sha256-T8GFE04y7256LwGzgJLjEOan1XWMPWKgYux3qUy83/A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ImageZero is a fast lossless image compression algorithm for RGB color photos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
