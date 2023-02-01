
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-rwt-utils-3rdparty";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "visualization_rwt-release";
        rev = "release/noetic/rwt_utils_3rdparty/0.1.1-2";
        sha256 = "sha256-PlVplDJ/EAKAUxhoxQRs3L8sbc+XIB3zLS14qk6DZzM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_utils_3rdparty package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
