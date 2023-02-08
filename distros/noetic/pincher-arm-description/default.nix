
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-pincher-arm-description";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "pincher_arm-release";
        rev = "release/noetic/pincher_arm_description/0.2.0-1";
        sha256 = "sha256-MdQyDNZzz9WikKS6YvpI9vKT7HJGccuKspkTzQNJ8J8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for PhantomX Pincher arm'';
    license = with lib.licenses; [ bsdOriginal cc-by-nc-sa-40 ];
  };
}
