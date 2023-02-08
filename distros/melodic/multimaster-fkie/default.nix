
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, default-cfg-fkie, master-discovery-fkie, master-sync-fkie, multimaster-msgs-fkie, node-manager-fkie }:
buildRosPackage {
  pname = "ros-melodic-multimaster-fkie";
  version = "0.8.12";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fkie-release";
        repo = "multimaster_fkie-release";
        rev = "release/melodic/multimaster_fkie/0.8.12-0";
        sha256 = "sha256-fMTR7WImbVCEHdkidpL282FslohAulr3WTrWwYerLUU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ default-cfg-fkie master-discovery-fkie master-sync-fkie multimaster-msgs-fkie node-manager-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage to combine the nodes required to establish and manage a multimaster network. 
    This requires no or minimal configuration. The changes are automatically detected and synchronized.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
