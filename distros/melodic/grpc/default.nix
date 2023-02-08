
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, rsync, zlib }:
buildRosPackage {
  pname = "ros-melodic-grpc";
  version = "0.0.10";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CogRobRelease";
        repo = "catkin_grpc-release";
        rev = "release/melodic/grpc/0.0.10-0";
        sha256 = "sha256-YlKwFJEngerjXnkZ3bVB7OZWGUIRFYNHiQ0em9GBb0Y=";
      };

  buildType = "catkin";
  buildInputs = [ autoconf catkin git libtool rsync zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized gRPC Package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
