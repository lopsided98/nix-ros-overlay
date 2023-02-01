
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-noetic-assimp-devel";
  version = "2.1.21-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_3rdparty-release";
        rev = "release/noetic/assimp_devel/2.1.21-2";
        sha256 = "sha256-0cbf5wSJ3qoSZEzEz5Cb/PSXSF8+/PmWzn+0D/Yzzdc=";
      };

  buildType = "catkin";
  buildInputs = [ cacert catkin git mk openssl rosboost-cfg rosbuild unzip ];
  propagatedBuildInputs = [ boost zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
